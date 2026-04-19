#!/bin/bash
# Claude Code 配置恢复脚本

set -e

CLAUDE_DIR="${HOME}/.claude"
BACKUP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Claude Code 配置恢复脚本 ==="
echo ""
echo "备份目录: ${BACKUP_DIR}"
echo "目标目录: ${CLAUDE_DIR}"
echo ""

# 检查 Claude 目录是否存在
if [ ! -d "${CLAUDE_DIR}" ]; then
    echo "创建 Claude 配置目录..."
    mkdir -p "${CLAUDE_DIR}"
fi

# 恢复配置文件
echo "恢复配置文件..."
cp -v "${BACKUP_DIR}/config/settings.json" "${CLAUDE_DIR}/"
cp -v "${BACKUP_DIR}/config/settings.local.json" "${CLAUDE_DIR}/"

echo ""
echo "✓ 配置文件已恢复"
echo ""
echo "接下来需要手动安装插件："
echo ""
echo "1. 启动 Claude Code:"
echo "   claude"
echo ""
echo "2. 安装插件（在 Claude Code 中执行）:"
echo "   /skill install code-review@claude-plugins-official"
echo "   /skill install github@claude-plugins-official"
echo "   /skill install pua@pua-skills"
echo "   /skill install skill-creator@claude-plugins-official"
echo "   /skill install claude-hud@claude-hud"
echo "   /skill install oh-my-claudecode@omc"
echo ""
echo "3. 配置 HUD（可选）:"
echo "   /claude-hud:setup"
echo ""
echo "4. 更新 oh-my-claudecode（如需要）:"
echo "   omc update"
echo ""
echo "详细说明请查看 README.md 和 docs/ 目录下的文档"
