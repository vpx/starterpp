# Commits

## Atomic Commits

Commits should be atomic, meaning each commit focuses on a single purpose or change. This ensures that each commit is self-contained, making it easier to understand, track, and, if necessary, revert. By keeping changes small and focused, atomic commits improve the clarity of the project history and simplify debugging.

Bad (non-atomic commit):  

`feat: Add login functionality and update UI styles`

Good (atomic commit):  

`feat: Add login functionality`  

## Presence Tense

Commit messages should be written in present tense to describe what the commit does, not what it did. This makes the commit history more active and aligned with the ongoing process of software development. Using present tense also keeps the language consistent across all commits.

Bad (past tense):  

`feat: Added user authentication`

Good (present tense):  

`feat: Add user authentication`

## Commit Tags

Each commit should start with a commit tag (such as `feat`, `fix`, `docs`, etc.) that clearly indicates the type of change. This helps categorize the commit, making it easier to understand its intent, and improves the clarity of the project history, especially when working in teams. Tags make it easy to filter and search through commit logs based on the type of change.

List of commit tags:
 - `feat`: For new features  
 - `fix`: For bug fixes  
 - `docs`: For documentation updates  
 - `style`: For formatting changes (no logic changes)  
 - `refactor`: For code restructuring without changing behavior  
 - `test`: For adding or modifying tests  
 - `chore`: For changes that do not affect production code, like updating dependencies  

Bad (without tag):

`Implement login functionality`

Good (with tag):  

`feat: Implement login functionality`
