### R - Role
You are a Senior SDET with 15 years of experience in software quality engineering. You are an expert in test automation (Playwright, Selenium, Cypress), API testing, CI/CD, test strategy, test case design, and defect management.

### I - Instructions
1. Create a complete Test Plan for facebook.com ,Login page based ONLY on the inputs in the Context section.
2. Include these sections in this exact order:
1 Objective
2 Scope
3 Inclusions and test design
4 Test strategy
5 Test environments
6 Test schedule
7 Entry and exit criteria
8 Test execution
9 Defect reporting
10 Test deliverables
11 Tools
12 Risks and mitigations
13 Approvals

3. Define the test approach separately for Functional (positive, negative, boundary, validation, UI, session) and Non-Functional (performance, security, usability, accessibility, compatibility, localization, reliability) testing. Include only the types that apply to the provided requirements.
4. Map every in-scope feature to its Req ID and to the planned test type and technique.
5. Define exit criteria as measurable thresholds (pass %, open defects by severity, requirement coverage %), using only values from the Context.

Do NOT:
- Write test cases, automation code, or step-by-step test scripts.
- Add features, requirements, tools, dates, or resources not provided in the Context.
- Use vague criteria such as "sufficient testing" or "acceptable quality".
- Include real credentials or personal data; use placeholders such as <valid_user>.

### C - Context
- Application / Module: Facebook.com log in page
- URL / Environment: https://www.facebook.com/ Developer Org
- Release / Build Version: 1.1

- Requirements (attach or paste with IDs):
REQ-001: The login page shall provide user interface elements (Email/Phone field, Password field, Log In button, links) that are displayed correctly and are accessible.
REQ-002: The system shall authenticate users with valid credentials (registered email or mobile number) and redirect them to the Home page.
REQ-003: The system shall reject invalid credentials and display appropriate error messages for incorrect, empty, disabled, or locked account scenarios.
REQ-004: The system shall validate input fields for data type, format, length, special characters, and case sensitivity.
REQ-005: The login page shall provide navigation to related functions (Forgotten password, Create new account, language selection).
REQ-006: The system shall support session management options (Keep me logged in, secure session creation, logout behavior).
REQ-007: The system shall provide additional account protection (failed-attempt restriction, OTP / two-factor authentication).
REQ-008: The login page shall meet security standards (HTTPS, encrypted credential transmission, password masking, no credentials exposed in URL, logs, or page source).
REQ-009: The login page shall meet performance targets (page load within 3 seconds, login response within 2 seconds).
REQ-010: The login page shall be compatible with supported browsers, operating systems, and devices.
REQ-011: The login page shall be responsive across desktop, tablet, and mobile screen sizes.
REQ-012: The login page shall support usability and accessibility (keyboard navigation, Enter key submission, screen reader labels).

- UI Elements in Scope: Username, Password, Log In button, Remember Me checkbox,Forgot Password link, if in scope


- Test Data Available:
  - Valid user: valid.user01@testmail.com / Test@12345
  - Valid mobile user: +91 9876543210 / Test@12345

  - Invalid combinations:
    - Valid email + wrong password: valid.user01@testmail.com / Wrong@999
    - Unregistered email + valid password: unknown.user@testmail.com / Test@12345
    - Valid email + password in different case: valid.user01@testmail.com / test@12345
  
  - Empty values: empty Email/Phone, empty Password, both empty

  - Boundary-length strings:
    - Email: 254 characters (maximum) and 255 characters (above maximum)
    - Password: 5 characters (below minimum), 6 characters (minimum), 128 characters (maximum), 129 characters (above maximum)

  - Locked user: locked.user@testmail.com / Test@12345 (locked after 5 failed attempts)
  - Inactive user: inactive.user@testmail.com / Test@12345 (deactivated account)

- Supported Browsers / Devices:
  - Desktop: Chrome 130, Firefox 132, Edge 130, Safari 17 (macOS)
  - Mobile: Chrome  on Android 14, Safari on iOS 17
  - Tablet: iPad (Safari), Android tablet (Chrome)
  - Resolutions: 1920x1080, 1366x768, 768x1024, 375x667

- Non-Functional Targets:
  - Page load: less than 3 seconds on standard broadband
  - Login response: less than 2 seconds after clicking Log In
  - Concurrency: 100 concurrent login requests with an error rate below 1%
  - Accessibility: WCAG 2.1 AA (keyboard navigation, labels, color contrast)
  - Security: HTTPS only; password never visible in URL, logs, or page source

- Test Tools:
  - Test management and defect tracking: Jira
  - Test case management: Excel / Xray
  - Automation (smoke and regression): Playwright + JavaScript
  - Performance: JMeter
  - Accessibility: axe DevTools / Lighthouse
  - Cross-browser and device testing: BrowserStack
  - API checks: Postman
  - Reporting: Allure

- Team and Roles:
  - QA Lead: plan approval, risk management, reporting
  - QA Tester (Manual): test case design and execution, defect logging
  - QA Automation Engineer: smoke and regression scripts
  - Developer: defect fixing and retest support
  - Product Owner / BA: requirement clarification and sign-off

-
- Known Risks / Constraints:
  - Test accounts may get locked after repeated failed-login tests (keep spare accounts)
  - CAPTCHA or bot protection may block repeated attempts (use a whitelisted staging environment)
  - Limited availability of real iOS and Android devices (use cloud device labs)
  - Requirements may change late in the cycle
  - Test environment downtime may delay execution
  - OTP and email-based verification depend on external services

- Out of Scope: Sign-up, SSO / social login, MFA, password reset flow, post-login application functionality

### E - Example

Objective
Scope
Inclusions
Test Environments
Defect Reporting Procedure


### P - Parameters
- Test Plan ID format: fb001
- Priority and Severity scale: High / Medium / Low (define each in the Defect Management section).
- Requirement coverage target: 100% for High priority requirements.
- Each section must be concise and audit-ready; use tables wherever the content is structured.
- Output must be deterministic (same input -> same output).
- Every statement must be traceable to a provided input.
- If information is missing or unclear, respond exactly: "Insufficient information to determine."
- If a detail is inferred, label it exactly: "Inference (low confidence)".
- Do not invent features, IDs, APIs, error codes, UI elements, dates, or behavior.
- Do not assume default or "typical" system behavior.

### O - Output
- Format: Markdown document.
- Structure: The 21 numbered sections from the Instructions, in order, each with a heading.
- Tables: Features to be Tested, Entry/Exit Criteria, Roles, Schedule, Risk Matrix, Defect Severity, and Metrics must be tables.
- End with a Requirement-to-Test-Type Traceability table (Req ID -> Test Type -> Technique).
- No explanations or additional content outside the Test Plan.

### T - Tone
Technical, precise, formal, audit-ready.