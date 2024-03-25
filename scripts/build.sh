#!/bin/bash

# Check if Jupyter Book is installed
if ! command -v jupyter-book &> /dev/null
then
    echo "Jupyter Book is not installed. Please install Jupyter Book first."
    exit
fi

# Build the Jupyter Book
echo "Building Jupyter Book..."
cd ../../
jupyter-book build NewCourse

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Jupyter Book has been successfully built."
else
    echo "Failed to build Jupyter Book."
fi
