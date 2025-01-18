#!/bin/bash
# push.sh

repo_path="/c/dein/pfad"
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Wechsel zum Repository-Verzeichnis
cd "$repo_path" || exit 1

# Status überprüfen
if [[ -n $(git status --porcelain) ]]; then
    echo -e "\033[0;33mChanges detected. Preparing to commit and push...\033[0m"
    
    # Alle Änderungen stagen
    git add .
    
    # Commit erstellen
    git commit -m "Automatic commit at $timestamp"
    
    # Push durchführen
    echo -e "\033[0;32mPushing changes to remote repository...\033[0m"
    if git push; then
        echo -e "\033[0;32mPush successful!\033[0m"
    else
        echo -e "\033[0;31mPush failed!\033[0m"
        exit 1
    fi
else
    echo -e "\033[0;34mNo changes to commit.\033[0m"
fi