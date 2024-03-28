#!/bin/bash

# Check if ghp-import is installed
if ! command -v ghp-import &> /dev/null
then
    echo "ghp-import is not installed. installing ghp-import first."
    #pip install ghp-import
    exit
fi

# Navigate to the directory containing the built HTML files
cd ../

# Publish the Jupyter Book online
echo "Publishing Jupyter Book online..."
ghp-import -n -p -f _build/html

# Check if publishing was successful
if [ $? -eq 0 ]; then
    echo "Jupyter Book has been successfully published online."
else
    echo "Failed to publish Jupyter Book online."
fi
