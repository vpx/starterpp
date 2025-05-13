# Commits

## Atomic Commits

Commits should focus on a single purpose or change.

Bad:  

```
feat: Add login functionality and update UI styles
```

Good:  

```
feat: Add login functionality
```

## Presence Tense

Commit messages should be written in present tense to describe what the commit does, not what it did.

Bad (past tense):  

```
feat: Added user authentication
```

Good (present tense):  

```
feat: Add user authentication
```

## Commit Tags

Each commit should start with a commit tag that clearly indicates the type of change.

List of commit tags:
 - `feat`: For code that introduce a change in the behaviour of the program.
 - `fix`: For code that fix a problem.
 - `docs`: For documentation.
 - `refactor`: For code restructuring without changing behavior.
 - `test`: For adding or modifying tests.
 - `chore`: For changes that do not affect production code (e.g, adding assets).

Bad (without tag):

```
Implement login functionality
```

Good (with tag):  

```
feat: Implement login functionality
```
