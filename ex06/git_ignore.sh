#!/bin/bash

# Check if the .gitignore file exists
if [ -e .gitignore ]; then
  # Use 'grep' to find and display ignored file patterns
  grep -Fxvf <(git ls-files) .gitignore | sed 's/$/$/'
else
  echo "No .gitignore file found in the repository."
fi




