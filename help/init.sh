#!/bin/bash

# Define the text to append to ~/.bashrc
TEXT_TO_APPEND="
#-----------------------------------------------
source_me() {
    local dir=\"\$1\"
    if [ -d \"\$dir\" ]; then
        for file in \"\$dir\"/*; do
            if [ -f \"\$file\" ]; then
               # echo \"Sourcing \$file\"
                . \"\$file\"
            fi
        done
    fi
}

source_me \"\$HOME/bash\"
source_me \"\$HOME/bash/functions\"
"

# Append the text to ~/.bashrc
echo "$TEXT_TO_APPEND" >> ~/.bashrc

# Optional: Inform the user
echo "The function source_me has been appended to ~/.bashrc."

echo "Installing dependencies."
#tssh
sudo apt install expect
#ASCII text
sudo apt install figlet

clear
source ~/.bashrc
echo "t init complete"
