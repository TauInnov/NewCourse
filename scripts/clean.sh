#!/bin/bash

# Check if Jupyter Book is installed
if ! command -v jupyter-book &> /dev/null
then
    echo "Jupyter Book is not installed. Please install Jupyter Book first."
    exit
fi

# Clean the Jupyter Book
echo "Cleaning Jupyter Book..."
cd ../../
jupyter-book clean NewCourse
