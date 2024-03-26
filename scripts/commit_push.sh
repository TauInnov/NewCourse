#!/bin/bash
 
# Check if there are any changes to add
if [[ -n $(git status -s) ]]; then
    # Add all changes but certain filetypes
    git add --all ../. ':!../_build/*' ':!../*.ipynb_checkpoints/*' ':!*.sh~'

    # Prompt for commit message
    read -p "Enter commit message: " commit_message

    # Commit changes
    git commit -m "$commit_message"

    #pull changes                                                               
    git config pull.rebase false                                                
    git pull 

    # Push changes to remote repository
    git push origin main  # Change 'main' to your branch name if different
else
    echo "No changes to commit."
fi
