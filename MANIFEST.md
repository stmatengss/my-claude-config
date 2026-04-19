# Claude Code 配置项目清单

## 项目信息

- **项目名称**: my-claude
- **创建时间**: 2026-04-19
- **位置**: /root/mateng/my-claude
- **用途**: Claude Code 完整配置备份

## 文件清单

### 配置文件 (config/)

| 文件名 | 说明 | 来源 |
|--------|------|------|
| settings.json | 全局设置 | ~/.claude/settings.json |
| settings.local.json | 本地设置 | ~/.claude/settings.local.json |

### 插件信息 (plugins/)

| 文件名 | 说明 | 来源 |
|--------|------|------|
| installed_plugins.json | 已安装插件列表 | ~/.claude/plugins/installed_plugins.json |
| plugin-list.md | 插件详细说明 | 手动生成 |

### 文档 (docs/)

| 文件名 | 说明 | 内容概要 |
|--------|------|----------|
| quick-start.md | 快速开始指南 | 基础使用、常用工作流、最佳实践 |
| skills-overview.md | 技能总览 | 所有可用技能的完整列表和分类 |
| permissions-guide.md | 权限配置指南 | 权限配置说明和最佳实践 |
| mcp-tools.md | MCP 工具列表 | 所有 MCP 工具的详细说明 |

### 记忆系统 (memory/)

当前为空（记忆系统在使用过程中动态生成）

### 根目录文件

| 文件名 | 说明 |
|--------|------|
| README.md | 项目说明文档 |
| restore.sh | 配置恢复脚本 |
| .gitignore | Git 忽略规则 |
| MANIFEST.md | 本文件 - 项目清单 |

## 已安装插件

1. **code-review@claude-plugins-official** (v bb7730114d87)
2. **github@claude-plugins-official** (v bb7730114d87)
3. **pua@pua-skills** (v 3.2.1)
4. **skill-creator@claude-plugins-official** (v bb7730114d87)
5. **claude-hud@claude-hud** (v 0.0.11)
6. **oh-my-claudecode@omc** (v 4.11.0) - 有更新可用: 4.12.1

## 配置亮点

### 权限配置

- **自动允许**: 文件读写、Git 操作、Web 搜索、AWS CLI、常用 Shell 命令
- **需要确认**: rm, sudo, docker, kubectl, gcloud, az
- **特殊配置**: GitHub PR 访问、特定仓库权限

### 启用的插件

所有 6 个插件均已启用，提供：
- 代码审查
- GitHub 集成
- PUA 方法论（13 种企业文化风格）
- 技能创建
- HUD 状态栏
- OMC 增强工具集（50+ 技能）

### 状态栏

配置了 claude-hud 作为状态栏显示

## 可用技能统计

- **核心技能**: 5 个
- **PUA 技能**: 13 个
- **OMC 技能**: 50+ 个
- **内置技能**: 3 个
- **总计**: 70+ 个技能

## 技能分类

### 按功能
- 自动化执行: 4 个
- 质量保证: 5 个
- 团队协作: 3 个
- 规划分析: 5 个
- 知识管理: 4 个
- 代码审查: 3 个
- 配置管理: 4 个
- 调试诊断: 3 个

### 按场景
- 日常开发: 4 个
- 复杂项目: 4 个
- 学习提升: 3 个
- 项目初始化: 3 个
- 问题排查: 4 个
- 知识积累: 3 个

## MCP 工具统计

- **AST 工具**: 2 个（搜索、替换）
- **LSP 工具**: 11 个（导航、重构、诊断）
- **Notepad 工具**: 5 个（工作记忆）
- **Project Memory 工具**: 4 个（项目记忆）
- **State 工具**: 5 个（状态管理）
- **Session 工具**: 1 个（会话搜索）
- **Trace 工具**: 2 个（追踪分析）
- **Python REPL**: 1 个（代码执行）
- **总计**: 31 个 MCP 工具

## 文档统计

- **总文档数**: 7 个
- **总行数**: 约 1500+ 行
- **覆盖范围**: 配置、插件、技能、工具、使用指南

## 使用场景

### 备份
将此目录作为 Claude Code 配置的完整备份

### 恢复
使用 `restore.sh` 脚本快速恢复配置

### 迁移
将此目录复制到新机器，运行恢复脚本

### 学习
阅读文档了解 Claude Code 的完整功能

### 参考
作为配置和使用的参考手册

## 维护建议

### 定期更新
- 每月更新一次配置备份
- 及时更新插件版本
- 同步新增的技能和工具

### 版本控制
建议使用 Git 管理此目录：
```bash
cd /root/mateng/my-claude
git init
git add .
git commit -m "Initial Claude Code configuration backup"
```

### 文档维护
- 新增插件时更新 plugin-list.md
- 新增技能时更新 skills-overview.md
- 配置变更时更新 permissions-guide.md

## 相关资源

- **Claude Code 官方**: https://github.com/anthropics/claude-code
- **oh-my-claudecode**: https://github.com/Yeachan-Heo/oh-my-claudecode
- **claude-hud**: https://github.com/jarrodwatts/claude-hud
- **PUA Skills**: https://github.com/pua-skills

## 更新日志

### 2026-04-19
- 初始创建
- 包含 6 个插件配置
- 包含 70+ 个技能
- 包含 31 个 MCP 工具
- 包含完整文档

## 下一步行动

1. ✓ 创建配置备份
2. ✓ 生成完整文档
3. ✓ 创建恢复脚本
4. ⏳ 初始化 Git 仓库（可选）
5. ⏳ 更新 oh-my-claudecode 到 4.12.1（可选）

## 联系与反馈

如有问题或建议，请访问：
- Claude Code Issues: https://github.com/anthropics/claude-code/issues

---

**生成时间**: 2026-04-19  
**生成工具**: Claude Code (Sonnet 4.6)  
**版本**: 1.0.0
