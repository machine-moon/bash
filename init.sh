#!/bin/bash

# Load the source_me function from the source_me file
source ./bash/functions/tload

TSUITE_HOME=$(pwd)
echo "Setting TSUITE_HOME to: $TSUITE_HOME"

# Define the text to append to ~/.bashrc
TEXT_TO_APPEND="
#-----------------------------------------------
# Set TSUITE_HOME environment variable
export TSUITE_HOME=\"$TSUITE_HOME\"

# the function to load tsuite
$(declare -f tload)

# Use tload to source scripts from the specified directories
tload \"\$TSUITE_HOME/bash\"
tload \"\$TSUITE_HOME/functions\"
"



# Append the text to ~/.bashrc
echo "$TEXT_TO_APPEND" >> ~/.bashrc
echo "The function source_me has been appended to ~/.bashrc."

echo "Installing dependencies."
# Expect package
sudo apt install expect -y
# ASCII text package
sudo apt install figlet -y

# Move the bash folder to ~/
cp -r bash ~/

# Notify the user
echo "Copied bash folder to the user home directory."


clear
source ~/.bashrc
echo "t init complete"
