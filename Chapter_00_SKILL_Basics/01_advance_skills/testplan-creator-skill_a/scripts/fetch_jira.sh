#!/bin/sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
skill_dir=$(dirname -- "$script_dir")
env_file="$skill_dir/.env"

read_env_value() {
    name=$1
    value=

    if [ -f "$env_file" ]; then
        value=$(sed -n "s/^[[:space:]]*${name}[[:space:]]*=[[:space:]]*//p" "$env_file" | tail -n 1)
        value=$(printf '%s' "$value" | sed 's/[[:space:]]*$//')
        case "$value" in
            \"*\") value=${value#\"}; value=${value%\"} ;;
            \'*\') value=${value#\'}; value=${value%\'} ;;
        esac
    fi

    printf '%s' "$value"
}

JIRA_BASE_URL=${JIRA_BASE_URL:-$(read_env_value JIRA_BASE_URL)}
JIRA_EMAIL=${JIRA_EMAIL:-$(read_env_value JIRA_EMAIL)}
JIRA_TOKEN=${JIRA_TOKEN:-$(read_env_value JIRA_TOKEN)}

if [ "$#" -ne 1 ]; then
    printf 'Usage: %s <JIRA-KEY>\n' "$0" >&2
    exit 2
fi

issue_key=$1
case "$issue_key" in
    *-*) project_key=${issue_key%-*}; issue_number=${issue_key##*-} ;;
    *) printf 'Error: JIRA key must look like PROJECT-123.\n' >&2; exit 2 ;;
esac
case "$project_key" in
    ""|*[!A-Z0-9_]*|[!A-Z]*) printf 'Error: invalid JIRA project key.\n' >&2; exit 2 ;;
esac
case "$issue_number" in
    ""|*[!0-9]*) printf 'Error: invalid JIRA issue number.\n' >&2; exit 2 ;;
esac

if [ -z "$JIRA_BASE_URL" ] || [ -z "$JIRA_EMAIL" ] || [ -z "$JIRA_TOKEN" ]; then
    printf 'Error: set JIRA_BASE_URL, JIRA_EMAIL, and JIRA_TOKEN in %s or the environment.\n' "$env_file" >&2
    exit 2
fi

case "$JIRA_BASE_URL" in
    https://*) ;;
    *) printf 'Error: JIRA_BASE_URL must use HTTPS.\n' >&2; exit 2 ;;
esac

JIRA_BASE_URL=${JIRA_BASE_URL%/}

exec curl \
    --fail \
    --silent \
    --show-error \
    --request GET \
    --url "$JIRA_BASE_URL/rest/api/3/issue/$issue_key?fields=*all" \
    --user "$JIRA_EMAIL:$JIRA_TOKEN" \
    --header 'Accept: application/json'
