#!/bin/bash

dotfiles="${HOME}/.config/october-dotfiles"
configDir="${HOME}/.config"

rm -rf "$configDir/btop" && ln -sf "$dotfiles/btop" "$configDir/btop"
rm -rf "$configDir/fastfetch" && ln -sf "$dotfiles/fastfetch" "$configDir/fastfetch"
# rm -rf "$HOME/.config/kitty" && ln -sf "$HOME/dotfiles/config/kitty" "$HOME/.config/kitty"
rm -rf "$configDir/oh-my-posh" && ln -sf "$dotfiles/oh-my-posh" "$configDir/oh-my-posh"
rm -rf "$configDir/zed" && ln -sf "$dotfiles/zed" "$configDir/zed"
rm -f "$HOME/.bashrc" && ln -sf "$dotfiles/bash/.bashrc" "$HOME/.bashrc"
rm -f "$HOME/.zshrc" && ln -sf "$dotfiles/zsh/.zshrc" "$HOME/.zshrc"

for configFile in $dotfiles/hypr/*; do
    fileName=$(basename "$configFile")
    rm -f "$configDir/october-config/hypr/user/$fileName"
    ln -sf "$dotfiles/hypr/$fileName" "$configDir/october-config/hypr/user/$fileName"
done
