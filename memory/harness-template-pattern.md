---
name: use_harness_template_for_automation
description: Use harness template pattern for automated workflows and repetitive tasks
type: feedback
---

Use harness template pattern for automated workflows and repetitive tasks.

**Why:** Harness templates provide a structured, reusable way to define automated workflows. They enable consistent execution of complex multi-step processes, reduce errors from manual repetition, and make automation logic explicit and maintainable. This is especially valuable for CI/CD pipelines, testing workflows, and deployment processes.

**How to apply:**
- When implementing automated workflows (CI/CD, testing, deployment), suggest using harness templates
- Harness templates should include:
  - Clear step definitions with inputs/outputs
  - Error handling and rollback procedures
  - Logging and observability hooks
  - Parameterization for different environments
- Store templates in a dedicated directory (e.g., `.harness/`, `templates/harness/`)
- Use YAML or JSON format for declarative configuration
- Include documentation on how to use and extend templates
- Apply this pattern when:
  - Setting up CI/CD pipelines
  - Creating deployment workflows
  - Implementing testing automation
  - Building multi-step data processing pipelines
  - Any workflow that will be executed repeatedly

**Example Structure:**
```yaml
# .harness/deploy-template.yaml
name: deploy-application
steps:
  - name: build
    command: npm run build
    on_failure: rollback
  - name: test
    command: npm test
    on_failure: abort
  - name: deploy
    command: ./deploy.sh
    environment: ${TARGET_ENV}
```
