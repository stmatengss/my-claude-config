# Claude Code 快速开始指南

本指南帮助你快速上手使用 Claude Code 和已安装的插件。

## 基础使用

### 启动 Claude Code

```bash
claude
```

### 基本命令

```bash
/help          # 获取帮助
/clear         # 清除对话历史
/exit          # 退出
```

## 常用工作流

### 1. 代码审查

审查 GitHub Pull Request：

```
/review
```

或者指定 PR：

```
审查这个 PR: https://github.com/user/repo/pull/123
```

### 2. 自动化任务执行

使用 autopilot 模式全自动执行任务：

```
/oh-my-claudecode:autopilot 实现用户登录功能
```

### 3. 循环执行任务

使用 ralph 模式循环执行直到完成：

```
/oh-my-claudecode:ralph 修复所有测试失败
```

### 4. 并行执行

使用 ultrawork 进行高吞吐量并行执行：

```
/oh-my-claudecode:ultrawork 重构所有组件
```

### 5. QA 循环

使用 ultraqa 进行测试-验证-修复循环：

```
/oh-my-claudecode:ultraqa 确保所有功能正常工作
```

### 6. 验证更改

在声称完成之前验证更改：

```
/oh-my-claudecode:verify
```

## PUA 模式使用

### 启用 PUA 模式

PUA 模式提供高效能问题解决方法论：

```
/pua:pua
```

### 不同角色模式

```
/pua:p7      # P7 骨干工程师模式
/pua:p9      # P9 Tech Lead 模式
/pua:p10     # P10 CTO 模式
```

### 特殊模式

```
/pua:yes     # 夸夸模式（鼓励型）
/pua:mama    # 妈妈唠叨模式（督促型）
```

### 切换企业文化风格

```
/pua:flavor
```

可选择：阿里、字节、华为、腾讯、Netflix、Amazon 等风格

## 知识管理

### 记住重要信息

```
/oh-my-claudecode:remember
```

Claude 会分析当前对话，提取可重用的项目知识。

### 使用 Wiki

创建持久化知识库：

```
/oh-my-claudecode:wiki
```

## 团队协作

### 启动团队模式

多个 agent 协同工作：

```
/oh-my-claudecode:team 完成整个功能模块
```

### CLI 团队运行时

在 tmux 中运行多个 worker：

```
/oh-my-claudecode:omc-teams
```

## 规划与分析

### 战略规划

```
/oh-my-claudecode:plan
```

### 深度分析

```
/oh-my-claudecode:deep-dive
```

### 因果追踪

```
/oh-my-claudecode:trace
```

## 代码改进

### 简化代码

```
/simplify
```

### 清理 AI 生成的冗余代码

```
/oh-my-claudecode:ai-slop-cleaner
```

### 自主进化改进

```
/oh-my-claudecode:self-improve
```

## 技能管理

### 列出所有技能

```
/oh-my-claudecode:skill list
```

### 搜索技能

```
/oh-my-claudecode:skill search <关键词>
```

### 创建新技能

```
/skill-creator:skill-creator
```

### 从当前会话学习技能

```
/oh-my-claudecode:learner
```

### 将工作流转换为技能

```
/oh-my-claudecode:skillify
```

## 配置管理

### 更新配置

```
/update-config
```

### 配置 HUD

```
/claude-hud:setup
```

### 配置 MCP 服务器

```
/oh-my-claudecode:mcp-setup
```

### 配置通知

```
/oh-my-claudecode:configure-notifications
```

## 调试与诊断

### 诊断当前会话

```
/oh-my-claudecode:debug
```

### 诊断安装问题

```
/oh-my-claudecode:omc-doctor
```

### 查看参考文档

```
/oh-my-claudecode:omc-reference
```

## 循环执行

### 定期执行任务

```
/loop 5m /oh-my-claudecode:verify
```

每 5 分钟验证一次更改。

### 取消循环

```
/pua:cancel-pua-loop
```

或

```
/oh-my-claudecode:cancel
```

## 高级功能

### 多模型编排

使用 Claude、Codex 和 Gemini：

```
/oh-my-claudecode:ccg
```

### 咨询专家

```
/oh-my-claudecode:ask codex "如何优化这段代码？"
```

### 并行科学家 agent

```
/oh-my-claudecode:sciomc
```

### 外部文档搜索

```
/oh-my-claudecode:external-context
```

### 视觉 QA

```
/oh-my-claudecode:visual-verdict
```

## 项目初始化

### 初始化 CLAUDE.md

```
/init
```

### 深度代码库初始化

```
/oh-my-claudecode:deepinit
```

### 项目会话管理

```
/oh-my-claudecode:project-session-manager
```

## 权限管理

### 减少权限提示

```
/fewer-permission-prompts
```

自动分析常用命令并添加到白名单。

### 手动添加权限

编辑 `~/.claude/settings.json` 或使用：

```
/update-config
```

## 最佳实践

### 1. 使用合适的模式

- **简单任务**: 直接对话
- **复杂任务**: 使用 autopilot 或 ralph
- **并行任务**: 使用 ultrawork 或 team
- **需要验证**: 使用 ultraqa

### 2. 善用知识管理

- 重要信息使用 `/oh-my-claudecode:remember`
- 长期知识使用 `/oh-my-claudecode:wiki`
- 临时笔记使用 notepad

### 3. 验证更改

完成任务后总是运行：

```
/oh-my-claudecode:verify
```

### 4. 定期清理

- 清理过期的 notepad 条目
- 更新 project memory
- 删除不再需要的技能

### 5. 利用 PUA 模式

遇到困难时启用 PUA 模式：

```
/pua:pua
```

它会强制穷尽所有解决方案。

## 快捷键

在 Claude Code CLI 中：

- `Ctrl+C`: 中断当前操作
- `Ctrl+D`: 退出
- `!<command>`: 在当前会话中运行 shell 命令

## 获取帮助

### 内置帮助

```
/help
```

### 查看技能文档

```
/oh-my-claudecode:omc-reference
```

### 报告问题

访问：https://github.com/anthropics/claude-code/issues

## 更新

### 更新 oh-my-claudecode

```bash
omc update
```

### 更新其他插件

使用 Claude Code 的插件管理功能。

## 常见问题

### Q: 如何查看所有可用的技能？

A: 使用 `/oh-my-claudecode:skill list` 或查看 `docs/skills-overview.md`

### Q: 如何减少权限提示？

A: 使用 `/fewer-permission-prompts` 或手动配置 `settings.json`

### Q: 如何保存重要信息？

A: 使用 `/oh-my-claudecode:remember` 或 `/oh-my-claudecode:wiki`

### Q: 如何取消正在运行的任务？

A: 按 `Ctrl+C` 或使用 `/oh-my-claudecode:cancel`

### Q: 如何查看历史会话？

A: 使用 MCP 工具 `session_search`

### Q: 如何创建自定义技能？

A: 使用 `/skill-creator:skill-creator` 或 `/oh-my-claudecode:skillify`

## 下一步

1. 阅读 `docs/skills-overview.md` 了解所有技能
2. 阅读 `docs/permissions-guide.md` 了解权限配置
3. 阅读 `docs/mcp-tools.md` 了解 MCP 工具
4. 阅读 `plugins/plugin-list.md` 了解插件详情

## 更新日期

2026-04-19
