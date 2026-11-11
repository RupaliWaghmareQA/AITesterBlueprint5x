---
name: testcase-creator-skill
description: "Based on my template,which I am going to give him, it is going to create a test cases according to my company. VWO.com"
version: "1.0.0"
author: "Rupali"
license: "MIT"
tags:
  test cases
---

# Test Cases Creator

Your task is to create a test cases based on the knowledge shared by the user, Make sure that you use proper templates that we have mentioned in the below comments.

## Core Principles

1. Use Information with is present or given by user Only.
2. Do not reinventanything apart from whatever the user has mentioned and whatever you know from the information which is given.

## When to Use
- Whenever somebody has given you a PRD( Which is product requirement document) or has given you a trigger to create a test cases for this requirment, use this skill.
- Create a test plan for x.
## Example

Field	Details
Test Case ID	TC_LOGIN_001
Title	Verify login with valid credentials
Module	Authentication
Priority	High
Type	Functional / Positive
Requirement Ref	AC-1
Preconditions	User is registered and active; the login page is open
Test Data	Email: rupali.test@example.com, Password: Test@1234


Steps:

Navigate to the login page.
Enter the valid email.
Enter the valid password.
Click Login.

Expected result: The user is redirected to the dashboard and the welcome message shows the user's name.

Actual result / Status: filled during execution (Pass / Fail)

Remaining test cases (summary view)
ID	Scenario	Test data	Expected result	Type	Priority	Ref
TC_LOGIN_002	Valid email, wrong password	rupali.test@example.com / Wrong@123	Error "Invalid email or password"; user stays on login page	Negative	High	AC-2
TC_LOGIN_003	Unregistered email	nouser@example.com / Test@1234	Same generic error (no hint about which field is wrong)	Negative	High	AC-2
TC_LOGIN_004	Empty email and password	Both blank	Validation messages on both fields; no request submitted	Negative	High	AC-3
TC_LOGIN_005	Empty password only	Valid email, blank password	"Password is required"	Negative	Medium	AC-3
TC_LOGIN_006	Invalid email format	rupali.test@ / Test@1234	"Enter a valid email address"	Validation	Medium	AC-3
TC_LOGIN_007	Password is masked	Type any password	Characters shown as dots/asterisks	UI	Medium	AC-5
TC_LOGIN_008	Account lock after 5 failures	5 wrong passwords in a row	Account locked; message shows the 15-minute lockout	Security	High	AC-4
TC_LOGIN_009	Correct password during lockout	Valid credentials after lock	Login blocked with the lockout message	Security	High	AC-4
TC_LOGIN_010	Email case sensitivity	RUPALI.TEST@example.com	Logs in successfully (if spec says email is case-insensitive)	Boundary	Low	AC-1
TC_LOGIN_011	SQL injection in email	' OR 1=1 --	Rejected; no login, no server error	Security	High	AC-2
TC_LOGIN_012	Leading/trailing spaces in email	rupali.test@example.com	Trimmed and logged in, or a clear error, per spec	Boundary	Low	AC-1