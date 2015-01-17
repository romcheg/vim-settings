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

set -eu

# Defaults
# ========
REPO_ADDRESS=${REPO_ADDRESS:-"https://github.com/romcheg/vim-settings.git"}
VIM_DIRECTORY=${VIM_DIRECTORY:-~/.vim}
VIMRC=${VIMRC:-~/.vimrc}
BACKUP_LOCATION=${BACKUP_LOCATION:-~/vim.old}
GIT_EXECUTABLE=${GIT_EXECUTABLE:-'git'}
VIM_EXECUTABLE=${VIM_EXECUTABLE:-'vim'}


# Functions
# =========

# Checks whether the specified app is available by running
# it with --version and checking the exit code. Breaks the
# script exection, if not available.
#
# $1: App executable to run.
assert_available() {
    $1 --version 2>&1 >/dev/null
    local not_available=$?

    if [ "$not_available" -ne "0" ]; then
        echo "Please install " $1 " and make sure it is available."
        exit 1
    fi
}


# Clones the settings from the repository and creates a symlink.
# Assumes that the environment is clean.
install() {
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
backup() {
    echo "Creating a back up..."

    backup_dir=$(mktemp -d $BACKUP_LOCATION.XXX)

    if [ -f "$VIMRC" ] || [ -d "$VIMRC" ]; then
        cp $VIMRC $backup_dir/
    fi

    if [ -f "$VIM_DIRECTORY" ] || [ -d "$VIM_DIRECTORY" ]; then
        cp -r $VIM_DIRECTORY $backup_dir/
    fi
}


# Cleans up a previuos configuration.
cleanup() {
    echo "Cleaning up the previous installation..."
    rm -rf $VIM_DIRECTORY
    rm -rf $VIMRC
}


# Logic
# =====
assert_available $VIM_EXECUTABLE
assert_available $GIT_EXECUTABLE
backup_dir=""

# Detect a previous installation.
if [ -d "$VIM_DIRECTORY" ] || [ -f "$VIMRC" ]; then
    echo "A previous configuration found."
    echo "You can either stop right now or choose to relpace it with the new one."
    echo "If you choose to continue, the old configuration will be backed up and replaced with the new one."

    read -p "Would you like to continue (y/N)? " choice < /dev/tty

    case "$choice" in
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
echo "=========================================================="
echo "Vim settings was installed!"


if [ -n "$backup_dir" ]; then
    echo "Old configuration files were saved to "$backup_dir
fi

echo "Now you can run Vim without arguments and let it configure its plugins."
echo "Thank you for using my settings!"
echo "=========================================================="

exit 0
