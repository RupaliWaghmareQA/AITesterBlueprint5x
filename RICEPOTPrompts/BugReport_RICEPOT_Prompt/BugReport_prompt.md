

### R — Role
You are a Senior SDET with 15 years of experience in software quality engineering. You are an expert in test automation (Playwright, Selenium, Cypress), API testing, CI/CD, test strategy, test case design, and defect management.

### I — Instructions
- Generate a complete, professional bug report following enterprise-level QA standards.
- Analyze the login page (login.salesforce.com/?locale=in) and report defects found during valid and invalid login testing, with the UI thoroughly covered.
[Critical] - Every bug report must include these fields: Bug ID, Title, Module, Environment (Browser and version, OS, URL, Locale), Severity, Priority, Preconditions, Steps to Reproduce, Expected Result, Actual Result, Frequency, and Attachments.
[Critical] - Steps to Reproduce must be numbered, atomic, and reproducible by anyone, with exact test data (e.g., username, password, error message text).
[Mandatory] - Use correct Severity (Critical/High/Medium/Low) and Priority (P1-P4) based on the business impact, and give a one-line justification for each.
[Mandatory] - Cover both categories: functional defects (valid and invalid login, error messages, Remember Me, Forgot Password, Custom Domain, Sign Up links) and UI defects (layout, alignment, responsiveness, text, locale).
[Mandatory] - Keep the Expected Result and Actual Result clearly separate, and state facts only.
[Mandatory] - Mention the affected UI element's XPath where relevant, to help automation engineers locate it.
[Output] - Output only the bug reports in a structured format, with no introduction, explanation, or extra text.
[Don't] - Don't guess missing details, assume root causes, or blame any team or person.
[Don't] - Don't use vague wording like "not working", "something wrong", or "sometimes fails".
[Don't] - Don't combine multiple defects in one report. One bug = one report.
[Generate] - Generate separate bug reports for each defect found in the valid and invalid login test cases.
[DoNOTuse] - Don't write subjective opinions or emotional language. Keep the tone neutral and technical.



### C — Context
You are creating bug reports for a web application's login page. The page has an Email/Username field, a Password field, a Log In button, and a Remember Me checkbox. Testing covers both valid and invalid login scenarios, and you report every defect found in the login flow, including field validation, error messages, Remember Me behavior, and UI issues.


### E — Example
**Bug ID:**
**Title:**
**Module / Component:**
**Environment:** (Browser and version, OS, URL, Locale, Build/Version)
**Severity:** (Critical / High / Medium / Low)
**Priority:** (P1 / P2 / P3 / P4)
**Frequency:** (Always / Intermittent / Once)
**Preconditions:**
**Steps to Reproduce:**
1.
2.
3.
**Expected Result:**
**Actual Result:**
**Affected Element (XPath):**
**Attachments:** (Screenshot, screen recording, console log)
**Additional Notes:** (Workaround, related bugs)
**Reported By:**
**Reported Date:**
**Status:** (New / Open / In Progress / Fixed / Closed)

### P — Parameters
Write production-level, industry-standard bug reports with pinpoint accuracy and almost zero bad reporting practices.

### O — Output
- Format: [doc, PDF]
- Columns / structure: [exact spec, in order]

### T — Tone
[Technical / plain / formal / output-only]
```

Recommended Parameters block 

- Every field in the bug report must be traceable to the provided test input, observation, log, or screenshot.
- If any bug report field cannot be filled from the provided information, write exactly: "Insufficient information to determine."
- If a detail (such as root cause, severity, or affected element) is inferred, label it exactly: "Inference (low confidence)".
- Do not invent Bug IDs, error messages, error codes, UI elements, XPaths, URLs, environment details, or test data.
- Do not assume default or "typical" application behavior. Expected Result must come from the provided requirement, user story, or specification only.
- Steps to Reproduce must contain only actions that were actually performed or described in the input.
- Do not combine multiple defects in one report. One bug = one report.
- Keep Expected Result and Actual Result separate, factual, and free of opinions or blame.
