# Claude Code 权限配置指南

本文档说明当前 Claude Code 环境的权限配置。

## 权限配置文件

Claude Code 使用两个配置文件管理权限：

1. **settings.json** - 全局设置，适用于所有项目
2. **settings.local.json** - 本地设置，特定于当前项目

## 当前权限配置

### 全局权限 (settings.json)

#### 文件操作
- `Read` - 读取所有文件
- `Write` - 写入文件
- `Read(//D:/*/git/gpu/**)` - 读取特定路径
- `Edit(//D:/*/git/gpu/**)` - 编辑特定路径

#### Web 访问
- `WebSearch` - Web 搜索
- `WebFetch(domain:*)` - 抓取任意域名

#### Shell 命令（自动允许）
- `ls`, `dir`, `pwd` - 目录浏览
- `find`, `grep`, `rg` - 文件搜索
- `cat`, `head`, `tail`, `wc` - 文件查看
- `sort`, `uniq`, `printf`, `echo` - 文本处理
- `tree`, `stat`, `du` - 文件信息
- `which`, `where` - 命令查找
- `mkdir`, `touch`, `chmod` - 文件管理
- `sed -n`, `sed --posix -n`, `sed -E -n`, `sed -r -n` - 安全的 sed 操作
- `nl -ba` - 行号显示
- `cp`, `mv` - 文件复制移动
- `wget`, `curl` - 下载工具

#### Git 命令（自动允许）
**只读操作**:
- `git status`, `git log`, `git show`, `git diff`
- `git grep`, `git blame`, `git cat-file`
- `git rev-parse`, `git rev-list`, `git describe`
- `git ls-files`, `git ls-tree`, `git ls-remote`
- `git check-ignore`, `git config --local --get`
- `git remote -v`, `git submodule status/summary`

**写操作**:
- `git fetch`, `git branch`, `git switch`, `git checkout`
- `git restore`, `git add`, `git commit`, `git stash`
- `git merge`, `git rebase`, `git push`, `git pull`
- `git -c core.editor=true rebase --continue`

#### 云服务
- `aws:*` - AWS CLI（自动允许）

#### 其他工具
- `opencode:*` - 打开代码编辑器
- `git clone:*` - 克隆仓库

### 需要确认的命令 (ask)

以下命令需要用户确认才能执行：
- `rm:*` - 删除文件
- `sudo:*` - 超级用户权限
- `docker:*` - Docker 操作
- `kubectl:*` - Kubernetes 操作
- `gcloud:*` - Google Cloud 操作
- `az:*` - Azure 操作

### 本地权限 (settings.local.json)

本地配置主要包含特定项目的权限，当前配置了：

#### GitHub 操作
- `gh pr view` - 查看 PR
- `gh pr diff` - 查看 PR diff
- 特定仓库的 PR 访问权限

#### API 访问
- GitHub API 访问（通过 curl）
- 特定域名的 WebFetch 权限

## 插件配置

### 已启用插件

```json
{
  "code-review@claude-plugins-official": true,
  "github@claude-plugins-official": true,
  "coderabbit@claude-plugins-official": true,
  "pua@pua-skills": true,
  "skill-creator@claude-plugins-official": true,
  "claude-hud@claude-hud": true,
  "oh-my-claudecode@omc": true
}
```

### 额外的 Marketplace

```json
{
  "claude-hud": {
    "source": {
      "source": "github",
      "repo": "jarrodwatts/claude-hud"
    }
  },
  "omc": {
    "source": {
      "source": "git",
      "url": "https://github.com/Yeachan-Heo/oh-my-claudecode.git"
    }
  }
}
```

## 状态栏配置

当前配置使用 claude-hud 作为状态栏：

```json
{
  "statusLine": {
    "type": "command",
    "command": "bash -c 'plugin_dir=$(ls -d \"${CLAUDE_CONFIG_DIR:-$HOME/.claude}\"/plugins/cache/claude-hud/claude-hud/*/ 2>/dev/null | awk -F/ '\"'\"'{ print $(NF-1) \"\\t\" $(0) }'\"'\"' | sort -t. -k1,1n -k2,2n -k3,3n -k4,4n | tail -1 | cut -f2-); exec \"/usr/local/bin/node\" \"${plugin_dir}dist/index.js\"'"
  }
}
```

## 权限管理最佳实践

### 1. 分层管理
- **全局设置**: 放置通用的、安全的命令
- **本地设置**: 放置项目特定的权限

### 2. 最小权限原则
- 只授予必要的权限
- 危险操作（rm, sudo）放在 ask 列表

### 3. 使用通配符
- `git *:*` - 允许所有 git 子命令
- `Bash(ls:*)` - 允许 ls 的所有参数

### 4. 域名限制
- `WebFetch(domain:github.com)` - 只允许特定域名
- `WebFetch(domain:*)` - 允许所有域名（谨慎使用）

## 修改权限

### 添加新权限

编辑 `~/.claude/settings.json` 或 `~/.claude/settings.local.json`：

```json
{
  "permissions": {
    "allow": [
      "Bash(new-command:*)"
    ]
  }
}
```

### 使用技能管理

也可以使用 `/update-config` 技能来管理权限：

```
/update-config
```

然后按照提示添加或修改权限。

## 安全建议

1. **不要盲目允许所有命令** - 仔细审查每个权限
2. **定期审查权限列表** - 删除不再需要的权限
3. **使用 ask 列表** - 对于不确定的命令，先放在 ask 列表
4. **备份配置文件** - 在修改前备份
5. **测试新权限** - 在测试环境中验证新权限的安全性

## 恢复默认配置

如果配置出现问题，可以：

1. 删除配置文件：
   ```bash
   rm ~/.claude/settings.json
   rm ~/.claude/settings.local.json
   ```

2. 重启 Claude Code，会自动生成默认配置

3. 或者从本备份恢复：
   ```bash
   cp config/settings.json ~/.claude/
   cp config/settings.local.json ~/.claude/
   ```

## 更新日期

2026-04-19
