# Claude Code 可用技能总览

本文档列出了当前 Claude Code 环境中所有可用的技能（Skills）。

## 核心技能

### 配置管理
- **update-config**: 通过 settings.json 配置 Claude Code
- **statusline-setup**: 配置状态栏设置

### 代码质量
- **simplify**: 审查已更改的代码，检查重用性、质量和效率
- **fewer-permission-prompts**: 扫描会话记录，添加常用命令到白名单以减少权限提示

### 循环执行
- **loop**: 按定期间隔运行提示或斜杠命令（例如 /loop 5m /foo）

### API 开发
- **claude-api**: 构建、调试和优化 Claude API / Anthropic SDK 应用

## 代码审查插件 (code-review)

- **code-review:code-review**: 审查 Pull Request

## PUA 插件 (pua-skills)

### 核心模式
- **pua:pua**: 核心 PUA 模式 - 强制高效能穷尽式问题解决
- **pua:pua-en**: 英文版 PUA 模式
- **pua:pua-ja**: 日文版 PUA 模式

### 角色模式
- **pua:p7**: P7 骨干工程师模式 - 方案驱动执行
- **pua:p9**: P9 Tech Lead 模式 - 写 Prompt 管 P8 团队
- **pua:p10**: P10 CTO 模式 - 定战略管 P9

### 特殊模式
- **pua:pro**: PUA Pro 扩展 - 自进化追踪
- **pua:yes**: SB Leader 夸夸模式 - ENFP 型领导
- **pua:mama**: 妈妈唠叨模式 - 中国式妈妈唠叨驱动
- **pua:shot**: PUA Shot - v2 原始浓缩版

### 工具
- **pua:pua-loop**: PUA Loop - 自动迭代模式
- **pua:kpi**: PUA KPI 报告卡
- **pua:flavor**: 切换大厂味道（阿里/字节/华为/腾讯等）
- **pua:on**: 开启默认模式
- **pua:off**: 关闭默认模式
- **pua:cancel-pua-loop**: 取消当前活跃的 PUA Loop
- **pua:survey**: PUA 调研问卷

## 技能创建器 (skill-creator)

- **skill-creator:skill-creator**: 创建新技能、修改和改进现有技能

## Claude HUD (claude-hud)

- **claude-hud:setup**: 配置 claude-hud 作为状态栏
- **claude-hud:configure**: 配置 HUD 显示选项

## Oh-My-ClaudeCode (omc)

### 核心工作流
- **oh-my-claudecode:autopilot**: 全自动执行模式，从想法到工作代码
- **oh-my-claudecode:ralph**: 自引用循环直到任务完成
- **oh-my-claudecode:ultrawork**: 并行执行引擎，高吞吐量任务完成
- **oh-my-claudecode:ultraqa**: QA 循环工作流 - 测试、验证、修复、重复
- **oh-my-claudecode:verify**: 验证更改是否真正有效

### 团队协作
- **oh-my-claudecode:team**: N 个协调的 agent 在共享任务列表上工作
- **oh-my-claudecode:omc-teams**: CLI 团队运行时，在 tmux 中运行 claude/codex/gemini worker
- **oh-my-claudecode:ccg**: Claude-Codex-Gemini 三模型编排

### 规划与分析
- **oh-my-claudecode:plan**: 战略规划与可选访谈工作流
- **oh-my-claudecode:ralplan**: 共识规划入口，自动门控模糊的 ralph/autopilot 请求
- **oh-my-claudecode:deep-dive**: 2 阶段管道：追踪（因果调查）-> 深度访谈
- **oh-my-claudecode:deep-interview**: 苏格拉底式深度访谈，数学模糊门控
- **oh-my-claudecode:trace**: 证据驱动的因果追踪

### 知识管理
- **oh-my-claudecode:remember**: 审查可重用的项目知识，决定什么属于 project-memory
- **oh-my-claudecode:wiki**: LLM Wiki - 持久化 markdown 知识库
- **oh-my-claudecode:writer-memory**: 作家的 agent 记忆系统

### 技能管理
- **oh-my-claudecode:skill**: 管理本地技能 - 列出、添加、删除、搜索、编辑
- **oh-my-claudecode:skillify**: 将当前会话的可重复工作流转换为可重用技能
- **oh-my-claudecode:learner**: 从当前对话中提取学到的技能

### 代码改进
- **oh-my-claudecode:self-improve**: 自主进化代码改进引擎
- **oh-my-claudecode:ai-slop-cleaner**: 清理 AI 生成的代码冗余

### 项目初始化
- **oh-my-claudecode:deepinit**: 深度代码库初始化，分层 AGENTS.md 文档
- **oh-my-claudecode:project-session-manager**: Worktree 优先的开发环境管理器

### 专家咨询
- **oh-my-claudecode:ask**: 流程优先的顾问路由，用于 Claude、Codex 或 Gemini
- **oh-my-claudecode:sciomc**: 编排并行科学家 agent 进行综合分析
- **oh-my-claudecode:external-context**: 调用并行文档专家 agent 进行外部 web 搜索

### 视觉 QA
- **oh-my-claudecode:visual-verdict**: 结构化视觉 QA 判定，用于截图与参考对比

### 配置与维护
- **oh-my-claudecode:setup**: 安装或刷新 oh-my-claudecode
- **oh-my-claudecode:mcp-setup**: 配置流行的 MCP 服务器
- **oh-my-claudecode:configure-notifications**: 配置通知集成（Telegram、Discord、Slack）
- **oh-my-claudecode:hud**: 配置 HUD 显示选项

### 调试与诊断
- **oh-my-claudecode:debug**: 诊断当前 OMC 会话或仓库状态
- **oh-my-claudecode:omc-doctor**: 诊断和修复 oh-my-claudecode 安装问题
- **oh-my-claudecode:omc-reference**: OMC agent 目录、可用工具、团队管道路由

### 控制
- **oh-my-claudecode:cancel**: 取消任何活动的 OMC 模式
- **oh-my-claudecode:release**: oh-my-claudecode 的自动发布工作流

## 内置技能

### 项目初始化
- **init**: 初始化新的 CLAUDE.md 文件和代码库文档

### 代码审查
- **review**: 审查 Pull Request
- **security-review**: 完成当前分支待处理更改的安全审查

## 使用方法

在 Claude Code 中，使用斜杠命令调用技能：

```
/skill-name
```

例如：
```
/pua:pua
/oh-my-claudecode:autopilot
/review
```

某些技能支持参数：
```
/loop 5m /verify
/oh-my-claudecode:ask codex "如何优化这段代码？"
```

## 技能分类

### 按功能分类

**自动化执行**
- autopilot, ralph, ultrawork, pua-loop

**质量保证**
- ultraqa, verify, simplify, ai-slop-cleaner, security-review

**团队协作**
- team, omc-teams, ccg

**规划分析**
- plan, ralplan, deep-dive, deep-interview, trace

**知识管理**
- remember, wiki, writer-memory, learner

**代码审查**
- review, code-review, security-review

**配置管理**
- setup, mcp-setup, configure-notifications, update-config

**调试诊断**
- debug, omc-doctor, trace

### 按使用场景分类

**日常开发**
- simplify, verify, review, fewer-permission-prompts

**复杂项目**
- autopilot, team, ultrawork, plan

**学习提升**
- pua (各种模式), learner, skillify

**项目初始化**
- init, deepinit, project-session-manager

**问题排查**
- debug, trace, deep-dive, omc-doctor

**知识积累**
- remember, wiki, writer-memory

## 更新日期

2026-04-19
