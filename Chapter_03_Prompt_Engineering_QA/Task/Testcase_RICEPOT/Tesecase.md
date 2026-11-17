# Testcase RICE-POT Template



### R — Role
You are a Senier QA automation Engineer with 15 years of experience. You have a very good understanding of IT, testing concepts. 

You have extensive expertise in Manual Testing, Automation Testing, Functional Testing, Regression Testing, Integration Testing, API Testing, and End-to-End Testing.

### I — Instructions
- Generate a complete, structured set of test cases for Login, e.g.,  Login page. based ONLY on the requirements provided in the Context section.
[Critical] Cover both categories:
  - Functional: positive, negative, boundary, field validation, UI/UX behavior, navigation, session/state handling, error messages, role/permission checks.
  - Non-Functional: performance, security, usability, accessibility, compatibility chrome,firefox, reliability, localization, scalability (include only types that apply to the provided requirements).
[Critical] Apply test design techniques (EP, BVA, decision table, state transition) wherever applicable, and name the technique used per test case.
[Mandatory] Every test case must trace to a requirement ID or acceptance criterion from the input. If none is provided, state "Insufficient information to determine." for that field.
[Mandatory] Each test case must be atomic, independent, repeatable, and have a single clear expected result.
[Mandatory] Use the fixed output format defined in the Output section.
[Don't] Do not write automation code, explanations, or commentary.
[Don't] Do not create duplicate or overlapping test cases.
[Don't] Do not use vague steps like "verify it works"; every step must be an observable action, and every expected result must be measurable.
[Generate] Generate 100 test cases: 50 functional split into positive and negative and 50 non-functional.


### C — Context
 Application / Module: https://www.facebook.com/login
- URL / Environment: https://www.facebook.com/
-- UI Elements in Scope: Username field, Password field, Log In button, Remember Me checkbox, {{Forgot Your Password link, if in scope}}

- Requirements / Acceptance Criteria:

  Functional
  REQ-001: The login page shall display the Username field, Password field, Log In button, and Remember Me checkbox.
  REQ-002: A user with valid username and valid password shall be authenticated and redirected to the application home page after clicking Log In.
  REQ-003: A valid username with an invalid password shall not authenticate; the system shall display ERROR_MSG_INVALID_CREDENTIALS
   and stay on the login page.
  REQ-004: An invalid username with a valid password shall not authenticate; the system shall display ERROR_MSG_INVALID_CREDENTIALS
  REQ-005: Submitting with both fields empty shall not authenticate; the system shall display ERROR_MSG_EMPTY_FIELDS
  REQ-006: Submitting with only the Username empty, or only the Password empty, shall not authenticate; the system shall display ERROR_MSG_REQUIRED_FIELD.
  REQ-007: The Username field shall accept input in valid email-format and shall reject or fail authentication for malformed values (e.g., missing "@" or domain). Max length: 50

  REQ-008: The Password field shall mask entered characters.
  REQ-009: When Remember Me is selected and login succeeds, the username shall be pre-filled on the next visit to the login page.
  REQ-010: When Remember Me is not selected, the username shall not be pre-filled on the next visit.
  REQ-011: Credentials shall be case-sensitive for Password; Username case-sensitivity: YES
  REQ-012: Leading and trailing whitespace in the Username shall be handled as  trimmed / rejecte
  REQ-013: After 3conse cutive failed attempts, the account shall be locked  and ERROR_MSG_LOCKOUT shall be displayed.
  REQ-014: Pressing Enter in the Password field shall submit the login form.
  REQ-015: The Tab key order shall be Username -> Password -> Remember Me -> Log In.
  REQ-016: After logout, using the browser Back button shall not restore an authenticated session.
  REQ-017: An authenticated user shall be redirected to Dashboard based on their profile/role.

  Non-Functional
  REQ-101 (Performance): The login page shall load within 5 seconds on loginpage
  REQ-102 (Performance): Authentication response time shall be within 5 seconds for valid credentials.
  REQ-103 (Security): Credentials shall be transmitted over HTTPS only; HTTP requests shall redirect to HTTPS.
  REQ-104 (Security): The Password shall not appear in the URL, page source, or browser autofill history in plain text.
  REQ-105 (Security): The login form shall resist SQL injection and XSS payloads in Username and Password; no script execution or database error shall be exposed.

  REQ-106 (Security): Error messages shall not reveal whether the username or the password was incorrect.
  REQ-107 (Security): The session shall expire after 10 minutes of inactivity.
  REQ-108 (Usability): Error messages shall be visible, readable, and associated with the relevant field or form.
  REQ-109 (Accessibility): The page shall meet 5, including keyboard-only operation, visible focus indicators, and screen-reader labels for all fields.
  REQ-110 (Compatibility): The page shall render and function on {{Chrome vX, Firefox vX, Edge vX, Safari vX}}.
  REQ-111 (Compatibility): The page shall be responsive at {{desktop 1920x1080, tablet 768px, mobile 375px}}.
  REQ-112 (Localization): The page shall display in the language set by the locale parameter ({{locale=in}}), with enghlish.
  REQ-113 (Reliability): The page shall handle 1 concurrent login requests without error.

### E — Example
TC_FUNC_001	REQ-002	Functional	Positive	EP	High	Login with valid credentials	User account is active	username=<valid_user>, password=<valid_password>	"1. Open login page
2. Enter username
3. Enter password
4. Click Log In"	User lands on the home page	User session is active
TC_NFR_001	REQ-101	Non-Functional	Performance	N/A	Medium	Login page load time	Browser cache is cleared	N/A	"1. Open login page
2. Measure page load time"	Page loads within {{TARGET}}	N/A


### P — Parameters
- [Quality / accuracy / style constraints]
- [Determinism, traceability, length limits, no hallucination, etc.]

### O — Output
- Format: excel 
- Columns / structure: Exact sepcific

### T — Tone
Technical 


## Recommended Parameters block (for factual or technical output)

- Output must be deterministic (same input → same output).
- Every assertion must be traceable to a provided input.
- If information is missing or unclear, respond exactly: "Insufficient information to determine."
- If a detail is inferred, label it exactly: "Inference (low confidence)".
- Do not invent features, IDs, APIs, error codes, UI elements, or behavior.
- Do not assume default or "typical" system behavior.