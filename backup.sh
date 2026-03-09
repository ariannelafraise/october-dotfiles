#!/bin/bash

directory="${HOME}/.config/october-dotfiles"

# Pastel colors
GREEN="\e[38;5;150m"  # Light pastel green
PINK="\e[38;5;218m"   # Soft pink
RED="\033[38;2;255;105;97m"   # Light pastel red
RESET="\e[0m"         # Reset color

# Nerd Font icons
BACKUP_ICON="󰍉 "
GITHUB_ICON="󰢿 "
DONE_ICON="󰾏 "

echo -e "${PINK}${GITHUB_ICON} Pushing to GitHub...${RESET}\n"

git -C $directory add -A
git -C $directory commit -m "$(date +"%Y-%m-%d %H:%M:%S")"
if [ $? -ne 0 ]; then
    echo -e "\n${RED}Error: Commit failed!${RESET}"
    exit 1
fi
git -C "${directory}" push -u origin main
if [ $? -ne 0 ]; then
    echo -e "\n${RED}Error: Push failed!${RESET}"
    exit 1
fi
echo -e "\n${GREEN}${DONE_ICON} Push completed!${RESET}"
