# My Claude Configuration

这是我的 Claude Code 完整配置备份，包含所有设置、插件和记忆系统。

## 目录结构

```
my-claude/
├── config/              # 配置文件
│   ├── settings.json           # 全局设置
│   └── settings.local.json     # 本地设置
├── plugins/             # 插件信息
│   ├── installed_plugins.json  # 已安装插件列表
│   └── plugin-list.md          # 插件详细说明
├── memory/              # 记忆系统（当前为空）
├── docs/                # 文档
│   └── skills-overview.md      # 可用技能概览
└── README.md            # 本文件

## 已安装插件

1. **code-review** (claude-plugins-official)
   - 版本: bb7730114d87
   - 功能: 代码审查

2. **github** (claude-plugins-official)
   - 版本: bb7730114d87
   - 功能: GitHub 集成

3. **pua** (pua-skills)
   - 版本: 3.2.1
   - 功能: 高效能问题解决方法论

4. **skill-creator** (claude-plugins-official)
   - 版本: bb7730114d87
   - 功能: 创建和管理自定义技能

5. **claude-hud** (claude-hud)
   - 版本: 0.0.11
   - 功能: 状态栏显示

6. **oh-my-claudecode** (omc)
   - 版本: 4.11.0
   - 功能: 增强型工作流和工具集

## 权限配置

### 全局权限 (settings.json)
- 文件读写权限
- Git 操作权限
- Web 搜索和抓取
- AWS CLI 权限
- 各种 Shell 命令权限

### 本地权限 (settings.local.json)
- GitHub PR 相关操作
- 特定仓库的访问权限

## 恢复配置

要在新环境中恢复这些配置：

1. 复制配置文件：
   ```bash
   cp config/settings.json ~/.claude/
   cp config/settings.local.json ~/.claude/
   ```

2. 安装插件（使用 Claude Code）：
   ```
   /skill install code-review@claude-plugins-official
   /skill install github@claude-plugins-official
   /skill install pua@pua-skills
   /skill install skill-creator@claude-plugins-official
   /skill install claude-hud@claude-hud
   /skill install oh-my-claudecode@omc
   ```

3. 配置 HUD（如需要）：
   ```
   /hud setup
   ```

## 备份时间

生成时间: 2026-04-19

