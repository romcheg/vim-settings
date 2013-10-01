# romcheg's vim settings

This repository contains my personal vim setting.


## Installation

If you want to install the settings just follow the steps:

1. Clone the repository to your home folder and initialize Vundle:

    ```
    git clone git@github.com:prykhodchenko/vim-settings.git ~/.vim
    cd ~/.vim
    git submodule init
    git submodule update
    ```

2. Create a symlink for Vim configuration file:

    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

3. Now start Vim and skip all the errors.
4. Run :BundleInstall to install all required plugins.
5. Enjoy ;)


## License

Everything in this repository is distributed AS IS and under WTFPL license.
More details about licensing can be found in [LICENSE](https://github.com/prykhodchenko/vim-settings/blob/master/LICENSE) file.
