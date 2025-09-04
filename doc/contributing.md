# Contributing

## Contents

 - [Report a Vulnerability](#report-a-vulnerability)
 - [Report a Bug](#report-a-bug)
 - [Submit a Pull Request](#submit-a-pull-request)
 - [Report a Documentation Issue](#report-a-documentation-issue)
 - [Request a Feature](#request-a-feature)
 - [Ask a Question](#ask-a-question)
 - [Developer's Certificate of Origin](#developer's-certificate-of-origin-1.1)
 - [Add a File](#add-a-file)
 - [Commit Format](#commit-format)
 - [Commit Tag](#commit-tag)
 - [Branching Strategy](#branching-strategy)

## Report a Vulnerability

To report a security-related issue, please do so privately via the Security section on GitHub.

## Report a Bug

To report a bug, please file a GitHub issue.

For security-related issues, refer to the [vulnerability](#report-a-vulnerability) section.

## Submit a Pull Request

Before submitting a pull request, make sure that:

 - The code follows the [style guide](style_guide.md).
 - The documentation follows the [style guide](style_guide.md).
 - Each commit is signed to certify the [developer certificate of origin](#developer's-certificate-of-origin-1.1).
 - Each commit contains a tag from the [available tags](#commit-tag).
 - Each commit follows the project [commit format](#commit-format).
 - Documentation is added or updated when needed.
 - Tests are added or updated when needed.
 - You follow the project [branching strategy](#branching-strategy).

## Report a Documentation Issue

To report a documentation issue, please file a Github issue.

## Request a Feature

To request a feature, please file a Github issue.

## Ask a Question

To ask a question, please file a Github issue.

## Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.

To comply with the terms, you must add the signature below at the end of each commit message:

`Signed-off-by: [Your name and surname] <[your_email@example.com]>`

You can add this line automatically by committing with the `-s` option:

`git commit -s`

See the [commit format](#commit-format) section for an overview of commit formatting.

## Adding a File

File and directory names must:

 - Be all lowercase.
 - Be in singular form.
 - Use underscores (`_`) instead of spaces.

For example:

```
Good:
code_of_conduct.md

Bad:
CodeOfConduct.md

Good:
test/

Bad:
tests/
```

Avoid adding files directly to the root directory whenever possible.

## Commit Format

The following is the commit format used in this project:

```
[tag]: [Your Title]

[An optional description].

Signed-off-by: [Name And Surname] <[email@example.com]>
```

 - Where the tag indicates the type of change.

 - Where the tag is one of the [available tags](#commit-tag).

 - Where the title and description must be written in the present tense.

 - Where each commit must focus on a single purpose or change.

 - Where each commit is signed to certify the [developer certificate of origin](#developer's-certificate-of-origin-1.1).

Here's an example of a good commit:

```
feat: Implement login functionality

Implement login functionality on launcher.

Signed-off-by: Emanuele Milani <emanuele@milani.com>
```

### Commit Tag

A commit tag is a required label at the start of every commit message that shows the type of change.

Only these tags are allowed, and every commit must use one of them:

 - `feat`: Introduces a change in the program’s behavior.
 - `fix`: Fixes a problem or bug.
 - `doc`: Documentation changes.
 - `refactor`: Code restructuring without changing behavior.
 - `test`: Adds or modifies tests.
 - `chore`: Changes that do not affect production code (e.g., adding assets).

Read the [commit format](#commit-format) section to see how to format the tag.

## Branching Strategy

Keep a single long‑lived branch named `main`.

Make every change in an isolated branch or fork. Create a feature branch for each unit of work and open a pull request targeting main.

Use semantic, descriptive branch names in the format: `username/short-description` (example: `alice/add-authentication`).

Use GitHub tags to mark released versions (use semantic version tags like v1.2.0).

