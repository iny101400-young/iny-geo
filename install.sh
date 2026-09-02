#!/usr/bin/env bash
# iny-geo 설치
# 사용법:  bash install.sh [작업폴더경로]
#          경로를 안 주면 앞 단계에서 쓰던 폴더를 그대로 씁니다.
#
# 변수 이름은 영문만 씁니다. zsh 는 한글 변수를 받지만 bash 는 못 받고,
# bash -n 문법 검사는 통과해서 실행해야 잡힙니다.
set -e
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="$HOME/.claude/iny-config.json"

# 앞 단계가 이미 잡아둔 작업 폴더를 그대로 씁니다. 덮어쓰면 앞 단계가 만든 것을 못 찾습니다.
EXISTING=""
if [ -f "$CONFIG" ]; then
  EXISTING="$(sed -n 's/.*"kb_path"[[:space:]]*:[[:space:]]*"\(.*\)".*/\1/p' "$CONFIG" | head -1)"
fi

KB_PATH="${1:-${EXISTING:-$HOME/asset-engine}}"
KB_PATH="${KB_PATH/#\~/$HOME}"

mkdir -p "$KB_PATH/outputs"
mkdir -p "$HOME/.claude"
cat > "$CONFIG" <<CFG
{
  "kb_path": "$KB_PATH"
}
CFG

DEST="$HOME/.claude/skills/iny-geo-기준"
mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$DEST/SKILL.md"
rm -rf "$DEST/scripts" "$DEST/references"
cp -R "$SRC/references" "$DEST/references"    # 기준 원본 한 장

echo
echo "설치됐습니다."
echo "  스킬      ~/.claude/skills/iny-geo-기준/"
echo "  작업 폴더  $KB_PATH"

echo
echo "이 스킬은 혼자 일하지 않습니다. 04·05·06·07·08 이 이 문서를 읽습니다."
echo "「이거 근거 있어?」 라고 물으시면 항목 이름으로 찾아 답합니다."
