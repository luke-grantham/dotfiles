#!/usr/bin/env bash

set -e  # exit on error
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup-$(date +%Y%m%d%H%M%S)"
STOW_FOLDERS=(ideavim nvim)  # add your stow directories here

echo "📦 Installing dotfiles from $DOTFILES_DIR"
echo "🗃 Backing up existing files to $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

for folder in "${STOW_FOLDERS[@]}"; do
  echo "🔗 Stowing $folder..."

  # Find conflicts before stowing
  for target in $(find "$DOTFILES_DIR/$folder" -type f); do
    rel_path="${target#$DOTFILES_DIR/$folder/}"
    full_target="$HOME/$rel_path"

    if [[ -e "$full_target" && ! -L "$full_target" ]]; then
      echo "⚠️  Found existing file: $full_target → Backing it up"
      mkdir -p "$BACKUP_DIR/$(dirname "$rel_path")"
      mv "$full_target" "$BACKUP_DIR/$rel_path"
    fi
  done

  stow -v "$folder"
done

echo "✅ Done! You may need to restart your shell."

