# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## linux.sh
This script checks if the operating system is Linux using the uname command. If the operating system is Linux, the script proceeds to execute the remaining commands. However, if the operating system is not Linux, the script logs an error message to the linuxsetup.log file and exits the script.

Assuming the operating system is Linux, the script creates a new directory named ~/.TRASH in the user's home directory. It then renames the existing .vimrc file in the home directory to .bup_vimrc using the mv command.

Next, the script appends a message to the linuxsetup.log file, indicating that the .vimrc file has been renamed. The script then uses the cat command to copy the contents of the .vimrc file located in the ~/.dotfiles/etc directory to the newly renamed .vimrc file in the user's home directory.

Finally, the script appends a line to the .bashrc file that sources the bashrc_custom file located in the ~/.dotfiles/etc directory. This ensures that any custom Bash configurations specified in the bashrc_custom file are loaded whenever a new Bash session is started.

## cleanup.sh
This script performs a few tasks to undo the changes made by a previous setup script. Specifically, it removes the .vimrc file from the user's home directory using the rm command.

The script also clears the contents of the .bashrc file by writing a blank line to it using the echo command with an empty string argument.

Finally, the script removes the .TRASH directory from the user's home directory using the rm command with the -r flag, which removes the directory and all of its contents recursively.

Overall, this script serves to remove any traces of the changes made by the previous setup script, effectively undoing the setup process.

## Makefile
This script defines two targets: linux and clean.

When the user runs make linux in the terminal, the script will first execute the clean target, which runs the cleanup.sh script located in the bin directory using the Bash shell.

Once the cleanup is completed, the script will then execute the linux.sh script located in the bin directory using the Bash shell.

Therefore, this script can be used to automate the cleanup and setup process for a Linux system by running the make linux command in the terminal.

## bashrc_custom
This script sets environment variables and creates aliases and functions in a Bash shell. The environment variable PATH is updated to include the current directory for executables. Several aliases are defined for frequently used commands such as changing directory and listing files. Two functions are also defined for creating and extracting tar.gz archives. Additionally, an alias is created for connecting to a specific server over SSH and another alias is created for moving files to a trash folder instead of deleting them permanently.

## vimrc
This script sets various configuration options for the Vim text editor, including enabling syntax highlighting, displaying line numbers, enabling auto-indentation, and setting the color scheme to elflord. It also includes a command to set specific options when editing Makefiles.
