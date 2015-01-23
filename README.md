# romcheg's vim settings

This repository contains my personal vim settings.


## Installation

If you want to install the settings just follow the steps:

1. GNU/Linux, OS X, or other unix-like operating system:

    ```
    curl -L https://romcheg.me/vim | bash
    ```

    or with wget

    ```
    wget https://romcheg.me/vim -O - | bash
    ```

2. If you do not have [exuberant ctags](http://ctags.sourceforge.net) installed
   it is the perfect time to get it.

   On Ubuntu run:

   ```
   sudo apt-get install exuberant-ctags
   ```

   If you have OS X, you could use [Homebrew](http://brew.sh):

   ```
   brew install ctags
   ```

   On other distributions of GNU/Linux you should install an appropriate
   package for getting ctags. Anyway, if you're using Vim, you probably know
   how to do that ;)

3. Now start Vim and wait until it initialized itself for the first time.
4. Enjoy ;)


## Upgrade

Basically the upgrade process is simply pulling the changes to your
local git repository. To do that execute the following:

    cd ~/.vim
    git pull

For upgrading Vim's plugins launch it and run

    :BundleInstall!

## License

Everything in this repository is distributed AS IS and under WTFPL license.
More details about licensing can be found in [LICENSE](https://github.com/prykhodchenko/vim-settings/blob/master/LICENSE) file.
