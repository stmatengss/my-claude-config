# MCP 工具列表

本文档列出了当前环境中可用的 MCP (Model Context Protocol) 工具。

## oh-my-claudecode 插件提供的 MCP 工具

### AST 工具 (抽象语法树)

#### ast_grep_replace
**功能**: 使用 AST 匹配替换代码模式，通过元变量保留匹配内容

**参数**:
- `pattern` (必需): 要匹配的模式
- `replacement` (必需): 替换模式（使用相同的元变量）
- `language` (必需): 编程语言
- `path`: 文件路径
- `dryRun`: 是否仅预览（默认 true）

**支持的语言**: javascript, typescript, tsx, python, ruby, go, rust, java, kotlin, swift, c, cpp, csharp, html, css, json, yaml

**示例**:
```
pattern: "console.log($MSG)"
replacement: "logger.info($MSG)"
language: "javascript"
```

#### ast_grep_search
**功能**: 使用 AST 匹配搜索代码模式，比文本搜索更精确

**参数**:
- `pattern` (必需): AST 模式（使用元变量 $VAR, $$$VARS）
- `language` (必需): 编程语言
- `path`: 文件路径
- `context`: 上下文行数
- `maxResults`: 最大结果数

**元变量**:
- `$NAME` - 匹配任何单个 AST 节点
- `$$$ARGS` - 匹配多个节点

**示例**:
```
pattern: "function $NAME($$$ARGS)"  # 查找所有函数声明
pattern: "if ($COND) { $$$BODY }"   # 查找所有 if 语句
```

### LSP 工具 (语言服务器协议)

#### lsp_goto_definition
**功能**: 查找符号的定义位置

**参数**:
- `file` (必需): 源文件路径
- `line` (必需): 行号（从 1 开始）
- `character` (必需): 字符位置（从 0 开始）

#### lsp_find_references
**功能**: 查找符号的所有引用

**参数**:
- `file` (必需): 源文件路径
- `line` (必需): 行号
- `character` (必需): 字符位置
- `includeDeclaration`: 是否包含声明

#### lsp_hover
**功能**: 获取类型信息、文档和签名

**参数**:
- `file` (必需): 源文件路径
- `line` (必需): 行号
- `character` (必需): 字符位置

#### lsp_rename
**功能**: 重命名符号（变量、函数、类等）

**参数**:
- `file` (必需): 源文件路径
- `line` (必需): 行号
- `character` (必需): 字符位置
- `newName` (必需): 新名称

**注意**: 返回编辑列表，不会自动应用更改

#### lsp_prepare_rename
**功能**: 检查符号是否可以重命名

**参数**:
- `file` (必需): 源文件路径
- `line` (必需): 行号
- `character` (必需): 字符位置

#### lsp_code_actions
**功能**: 获取可用的代码操作（重构、快速修复）

**参数**:
- `file` (必需): 源文件路径
- `startLine` (必需): 开始行号
- `startCharacter` (必需): 开始字符位置
- `endLine` (必需): 结束行号
- `endCharacter` (必需): 结束字符位置

#### lsp_code_action_resolve
**功能**: 获取特定代码操作的完整编辑详情

**参数**:
- `file` (必需): 源文件路径
- `startLine` (必需): 开始行号
- `startCharacter` (必需): 开始字符位置
- `endLine` (必需): 结束行号
- `endCharacter` (必需): 结束字符位置
- `actionIndex` (必需): 操作索引（从 1 开始）

#### lsp_diagnostics
**功能**: 获取文件的诊断信息（错误、警告、提示）

**参数**:
- `file` (必需): 源文件路径
- `severity`: 严重程度过滤（error, warning, info, hint）

#### lsp_diagnostics_directory
**功能**: 对目录运行项目级诊断

**参数**:
- `directory` (必需): 项目目录
- `strategy`: 策略（tsc, lsp, auto）

**注意**: 优先使用 tsc --noEmit，回退到 LSP 迭代

#### lsp_document_symbols
**功能**: 获取文件的符号层次结构大纲

**参数**:
- `file` (必需): 源文件路径

#### lsp_workspace_symbols
**功能**: 按名称搜索整个工作区的符号

**参数**:
- `query` (必需): 符号名称或模式
- `file` (必需): 工作区中的任意文件（用于确定使用哪个语言服务器）

#### lsp_servers
**功能**: 列出所有已知的语言服务器及其安装状态

### Notepad 工具（工作记忆）

#### notepad_read
**功能**: 读取 notepad 内容

**参数**:
- `section`: 读取的部分（all, priority, working, manual）
- `workingDirectory`: 工作目录

#### notepad_write_priority
**功能**: 写入优先上下文部分（替换现有内容）

**参数**:
- `content` (必需): 内容（建议少于 500 字符）
- `workingDirectory`: 工作目录

**注意**: 优先上下文总是在会话开始时加载

#### notepad_write_working
**功能**: 添加条目到工作记忆部分

**参数**:
- `content` (必需): 内容
- `workingDirectory`: 工作目录

**注意**: 条目带时间戳，7 天后自动清理

#### notepad_write_manual
**功能**: 添加条目到手动部分

**参数**:
- `content` (必需): 内容
- `workingDirectory`: 工作目录

**注意**: 此部分的内容永不自动清理

#### notepad_prune
**功能**: 清理超过 N 天的工作记忆条目

**参数**:
- `daysOld`: 天数（默认 7）
- `workingDirectory`: 工作目录

#### notepad_stats
**功能**: 获取 notepad 统计信息

**参数**:
- `workingDirectory`: 工作目录

### Project Memory 工具（项目记忆）

#### project_memory_read
**功能**: 读取项目记忆

**参数**:
- `section`: 读取的部分（all, techStack, build, conventions, structure, notes, directives）
- `workingDirectory`: 工作目录

#### project_memory_write
**功能**: 写入/更新项目记忆

**参数**:
- `memory` (必需): 记忆对象
- `merge`: 是否与现有记忆合并
- `workingDirectory`: 工作目录

#### project_memory_add_note
**功能**: 添加自定义笔记到项目记忆

**参数**:
- `category` (必需): 笔记类别（如 build, test, deploy, env, architecture）
- `content` (必需): 笔记内容
- `workingDirectory`: 工作目录

#### project_memory_add_directive
**功能**: 添加用户指令到项目记忆

**参数**:
- `directive` (必需): 指令内容
- `context`: 上下文
- `priority`: 优先级（high, normal）
- `workingDirectory`: 工作目录

**注意**: 指令在会话间持久化并在压缩时保留

### State 工具（状态管理）

#### state_read
**功能**: 读取特定模式的当前状态

**参数**:
- `mode` (必需): 模式（autopilot, team, ralph, ultrawork, ultraqa, ralplan, omc-teams, deep-interview, self-improve, skill-active）
- `session_id`: 会话 ID
- `workingDirectory`: 工作目录

#### state_write
**功能**: 写入/更新特定模式的状态

**参数**:
- `mode` (必需): 模式
- `active`: 是否活跃
- `iteration`: 迭代次数
- `max_iterations`: 最大迭代次数
- `current_phase`: 当前阶段
- `task_description`: 任务描述
- `plan_path`: 计划路径
- `started_at`: 开始时间
- `completed_at`: 完成时间
- `error`: 错误信息
- `state`: 自定义状态字段
- `session_id`: 会话 ID
- `workingDirectory`: 工作目录

#### state_clear
**功能**: 清除/删除特定模式的状态

**参数**:
- `mode` (必需): 模式
- `session_id`: 会话 ID
- `workingDirectory`: 工作目录

#### state_list_active
**功能**: 列出所有当前活跃的模式

**参数**:
- `session_id`: 会话 ID
- `workingDirectory`: 工作目录

#### state_get_status
**功能**: 获取特定模式或所有模式的详细状态

**参数**:
- `mode`: 模式（可选，不指定则返回所有）
- `session_id`: 会话 ID
- `workingDirectory`: 工作目录

### Session 工具（会话管理）

#### session_search
**功能**: 搜索先前的本地会话历史和转录工件

**参数**:
- `query` (必需): 搜索查询
- `project`: 项目名称
- `sessionId`: 会话 ID
- `since`: 时间范围
- `limit`: 结果限制
- `caseSensitive`: 是否区分大小写
- `contextChars`: 上下文字符数
- `workingDirectory`: 工作目录

### Trace 工具（追踪）

#### trace_timeline
**功能**: 显示按时间顺序的 agent 流追踪时间线

**参数**:
- `sessionId`: 会话 ID
- `filter`: 过滤器（all, hooks, skills, agents, keywords, tools, modes）
- `last`: 显示最后 N 个事件
- `workingDirectory`: 工作目录

#### trace_summary
**功能**: 显示 agent 流追踪会话的聚合统计

**参数**:
- `sessionId`: 会话 ID
- `workingDirectory`: 工作目录

### Python REPL 工具

#### python_repl
**功能**: 在持久化 REPL 环境中执行 Python 代码

**参数**:
- `action` (必需): 操作（execute, interrupt, reset, get_state）
- `researchSessionID` (必需): 研究会话唯一标识符
- `code`: Python 代码
- `projectDir`: 项目目录
- `executionLabel`: 执行标签
- `executionTimeout`: 执行超时（默认 300000ms）
- `queueTimeout`: 队列超时（默认 30000ms）

**支持的库**: pandas, numpy, matplotlib

## 使用建议

### AST 工具
- 用于精确的代码重构和搜索
- 比正则表达式更可靠
- 支持多种编程语言

### LSP 工具
- 用于代码导航和理解
- 获取类型信息和文档
- 执行安全的重命名操作
- 查找代码问题（诊断）

### Memory 工具
- Notepad: 临时工作记忆，适合当前会话
- Project Memory: 持久化项目知识，跨会话使用
- 合理使用可以提高工作效率

### State 工具
- 用于管理复杂工作流的状态
- 支持多种模式（autopilot, ralph, ultrawork 等）
- 可以跟踪任务进度和状态

### Session 工具
- 搜索历史会话
- 查找之前的解决方案
- 学习和复用经验

### Trace 工具
- 调试和分析 agent 行为
- 查看执行时间线
- 获取性能统计

## 更新日期

2026-04-19
