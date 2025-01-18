#!/bin/bash
# pull.sh

# Pull-Skript
repo_path="/c/dein/pfad"

# Wechsel zum Repository-Verzeichnis
cd "$repo_path" || exit 1

# Git Pull ausführen
echo -e "\033[0;32mPulling changes from remote repository...\033[0m"
if git pull; then
    echo -e "\033[0;32mPull successful!\033[0m"
else
    echo -e "\033[0;31mPull failed!\033[0m"
    exit 1
fi