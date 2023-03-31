# .gitignore
This file tells Git to ignore certain files and directories
## bashrc_custom
This file creates aliases/functions that can be useful
## vimrc
This file customizes the vim appearance
### linux.sh
This file checks if the operating system is Linux by using an if-then statement to compare the output of "uname" to the word "Linux", then it dumps an error message to linuxsetup.log and runs the exit command
Next the .TRASH directory is created in the home directory
Next if .vimrc exists in the home directory, the name is changed to .bup_vimrc and a message is dumped to linuxsetup.log stating that the name was changed
Next the contents of the vimrc file is overwritten and redirected to .vimrc in the home directory
Finally the statement "source ∼/.dotfiles/etc/bashrc custom" is added to the end of the .bashrc file in the home directory
#### cleanup.sh
This file reverses anything done in linux.sh
.vimrc is removed from the home directory
"source ∼/.dotfiles/etc/bashrc custom" in the .bashrc file in the home directory is replaced
Then the .TRASH directory in the home directory is removed
##### Makefile
This file creates two targets, linux and clean
The linux target runs the linux.sh script, while the clean target runs the cleanup.sh script
The linux target has dependency on the clean target
