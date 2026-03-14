#!/bin/bash
# Run script if sym link doesn't work or if you want to set up the agent manually.
# --- CONFIGURATION ---
# Define source files/folders
SRC_AGENT="AGENT.md"
SRC_SKILLS="skills"

# Define target directories
TARGET_CLAUDE=".claude"
TARGET_AGENT=".agent"

# --- HELPER FUNCTION ---
create_link() {
    local src=$1
    local dest=$2
    if [ -e "$src" ] && [ -d "$(dirname "$dest")" ]; then
        ln -sf "$(pwd)/$src" "$dest"
        echo "✅ Linked $src -> $dest"
    else
        echo "⚠️  Skipped: Source '$src' or Target Dir for '$dest' not found."
    fi
}

# --- EXECUTION ---

# 1. Link AGENT.md to .claude/CLAUDE.md and .agent/AGENT.md
if [ -d "$TARGET_CLAUDE" ]; then
    create_link "$SRC_AGENT" "$TARGET_CLAUDE/CLAUDE.md"
fi

if [ -d "$TARGET_AGENT" ]; then
    create_link "$SRC_AGENT" "$TARGET_AGENT/AGENT.md"
fi

# 2. Link the skills folder
if [ -d "$SRC_SKILLS" ]; then
    if [ -d "$TARGET_CLAUDE" ]; then
        # Claude Code looks for skills in .claude/skills/
        ln -sf "$(pwd)/$SRC_SKILLS" "$TARGET_CLAUDE/skills"
        echo "✅ Linked $SRC_SKILLS folder to $TARGET_CLAUDE/skills"
    fi
    
    if [ -d "$TARGET_AGENT" ]; then
        ln -sf "$(pwd)/$SRC_SKILLS" "$TARGET_AGENT/skills"
        echo "✅ Linked $SRC_SKILLS folder to $TARGET_AGENT/skills"
    fi
else
    echo "❌ Source 'skills' folder does not exist."
fi
