---
name: auto_commit_after_code_changes
description: Automatically commit code changes after completing modifications to maintain version control hygiene
type: feedback
---

Always commit code changes after completing modifications.

**Why:** Maintaining clean version control history helps track progress, enables easy rollback, and provides clear documentation of what was changed and why. Uncommitted changes can be lost or create confusion in collaborative environments.

**How to apply:** 
- After completing any code modification task (bug fix, feature implementation, refactoring), immediately create a git commit
- Use descriptive commit messages that explain what was changed and why
- Format: `git add <files> && git commit -m "Clear description of changes"`
- This applies to all code changes, not just major features
- Commit even small changes to maintain granular history
- Do not wait for user prompting - proactively commit after each logical unit of work is complete
