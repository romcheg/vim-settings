#! /bin/sh
#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                     Version 2, December 2004
# 
#  Everyone is permitted to copy and distribute verbatim or modified
#  copies of this license document, and changing it is allowed as long
#  as the name is changed.
# 
#  Disclaimer of Warranty. Unless required by applicable law or
#  agreed to in writing, Licensor provides the Work (and each
#  Contributor provides its Contributions) on an AS IS BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#  implied, including, without limitation, any warranties or conditions
#  of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
#  PARTICULAR PURPOSE. You are solely responsible for determining the
#  appropriateness of using or redistributing the Work and assume any
#  risks associated with Your exercise of permissions under this License.
# 
#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
# 
#   0. You just DO WHAT THE FUCK YOU WANT TO.

# This script clones romcheg's Vim settings and creates all
# necessary symbolic links.


# Defaults
# ========
REPO_ADDRESS="https://github.com/romcheg/vim-settings.git"
VIM_DIRECTORY=~/.vim
VIMRC=~/.vimrc
BACKUP_LOCATION=~/vim.old
GIT_EXECUTABLE=git
VIM_EXECUTABLE=vim


# Functions
# =========

# Checks whether the specified app is available by running
# it with --version and checking the exit code. Breaks the
# script exection, if not available.
#
# $1: App executable to run.
function assert_available {
    $1 --version 2>&1 >/dev/null 
    NOT_AVAILABLE=$?

    if [ $NOT_AVAILABLE -ne 0 ]; then
        echo "Please install " $1 " and make sure it is available."
        exit 1
    fi
}


# Clones the settings from the repository and creates a symlink.
# Assumes that the environment is clean.
function install {
    echo "Obtaining the settings..."
    $GIT_EXECUTABLE clone $REPO_ADDRESS $VIM_DIRECTORY
    
    if [ $? -ne 0 ]; then
        echo "Failed to obtain the settings. Please try again later."
        echo "If you got the error multiple times, please contact the author."
    
        exit 2
    fi
    
    echo "Creating symlinks..."
    ln -s $VIM_DIRECTORY/vimrc $VIMRC
}


# Backs up previous settings.
function backup {
    echo "Creating a back up..."

    BACKUP_DIR=`mktemp -d $BACKUP_LOCATION.XXX`
    cp $VIMRC $BACKUP_DIR/
    cp -r $VIM_DIRECTORY $BACKUP_DIR/

}


# Cleans up a previuos configuration.
function cleanup {
    echo "Cheaning up the previous installation."
    rm -rf $VIM_DIRECTORY
    rm -rf $VIMRC
}


# Logic
# =====
assert_available $VIM_EXECUTABLE
assert_available $GIT_EXECUTABLE

# Detect a previous installation.
if [ -d $VIM_DIRECTORY ] || [ -f $VIMRC ]; then
    echo "A previous configuration found."
    echo "You can either stop right now or choose to relpace it with the new one."
    echo "If you choose to continue, the old configuration will be backed up and replaced with the new one."
    
    read -p "Would you like to continue (y/N)? " CHOICE < /dev/tty

    case "$CHOICE" in 
      y|Y )
          backup
          cleanup
          ;;
      n|N )
          echo "Exiting. Thank you!"
          exit 3
          ;;
      * )
          echo "Assuming that as No. Thank you!"
          exit 3
          ;;
    esac
fi

# Installation is performed here.
install

echo ""
echo "Vim settings was installed!"

if [ -n "BACKUP_DIR" ]; then
    echo "=========================================================="
    echo "Old configuration files were saved to " $BACKUP_DIR
fi

echo "Now you can run Vim without arguments and let it configure its plugins."
echo "=========================================================="
echo "Thank you for using my settings!"

exit 0
