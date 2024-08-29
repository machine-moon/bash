#!/bin/bash

# Load the tload function from the file
TLOAD_FUNCTION=$(cat ./functions/tload)

# Capture the current directory where the script is located
TSUITE_HOME=$(pwd)
echo "Setting TSUITE_HOME to: $TSUITE_HOME"

# Define the text to append to ~/.bashrc
TEXT_TO_APPEND="
#-----------------------------------------------
# Set TSUITE_HOME environment variable
export TSUITE_HOME=\"$TSUITE_HOME\"

# Define the function tload
$TLOAD_FUNCTION

# Use tload to source scripts from the specified directories
tload \"\$TSUITE_HOME/bash\"
tload \"\$TSUITE_HOME/functions\"
"

# Append the text to ~/.bashrc
echo "$TEXT_TO_APPEND" >> ~/.bashrc
echo "The function tload and TSUITE_HOME have been appended to ~/.bashrc."

echo "Installing dependencies."
# Install required packages
sudo apt install expect -y
sudo apt install figlet -y

# Create symbolic links
# Link the bash folder to the user's home directory
ln -s "$TSUITE_HOME/bash" ~/bash
ln -s "$TSUITE_HOME" ~/bash/tsuite

# Notify the user
echo "Created symbolic links in the user home directory."

clear
echo "The setup is complete. Please restart your terminal or run 'source ~/.bashrc' to apply the changes."

