#!/bin/bash

# Function to display the absolute path of the current directory
display_path() {
  ABSOLUTE_PATH="$(pwd)"
  echo "The absolute path of the current directory is: $ABSOLUTE_PATH"
}

# Function to display instructions for updating the includePath in VSC
vsc_instructions() {
  echo "To update the includePath in Visual Studio Code, follow these steps:"
  echo "1. Open your project in Visual Studio Code."
  echo "2. Navigate to the '.vscode' folder at the root of your project."
  echo "3. Open or create a file named 'c_cpp_properties.json'."
  echo "4. Locate or add the 'includePath' field within 'configurations'."
  echo "5. Add the displayed absolute path to the 'includePath' list."
  echo ""
  echo "For example, if your 'includePath' initially looks like:"
  echo "\"includePath\": [\"${workspaceFolder}/**\"]"
  echo "You can modify it to look like:"
  echo "\"includePath\": [\"${workspaceFolder}/**\", \"your_absolute_path_here\"]"
}

# Main Menu
while true; do
  echo ""
  echo "Choose an option:"
  echo "1. Display the absolute path of the current directory."
  echo "2. Instructions for updating 'includePath' in Visual Studio Code."
  echo "3. Exit."
  read -p "Your choice: " option

  case $option in
    1) display_path;;
    2) vsc_instructions;;
    3) exit;;
    *) echo "Invalid option.";;
  esac
done
