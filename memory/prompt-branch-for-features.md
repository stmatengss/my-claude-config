---
name: prompt_branch_for_new_features
description: Prompt user to create a new branch when starting a new feature in a different conversation
type: feedback
---

Always prompt the user to create a new branch when starting a new feature in a different conversation.

**Why:** Working on new features directly on the main branch can lead to conflicts, makes it harder to review changes, and prevents parallel development. Creating feature branches enables clean PR workflows, easier rollback, and better collaboration. When starting work in a new conversation, there's a higher risk the user forgot to create a branch.

**How to apply:**
- At the start of a new conversation, if the user requests implementing a new feature, ask: "Should I create a new branch for this feature?"
- Suggest a descriptive branch name based on the feature (e.g., `feature/user-authentication`, `feature/export-data`)
- Only skip this prompt if:
  - The user explicitly mentions they're already on a feature branch
  - The task is a bug fix on an existing branch
  - The user says to work directly on the current branch
- After creating the branch, proceed with the feature implementation
- This applies specifically to NEW features, not bug fixes or small tweaks
