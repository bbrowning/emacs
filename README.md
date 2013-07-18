# My emacs configuration

Please note that much of this is cribbed straight from Chris
Wanstrath's config at http://github.com/defunkt/emacs, with pieces
from Jim Weirich's configuration as well:
http://github.com/jimweirich/emacs-setup/.

Clone this repo into `~/.emacs.d` then:

    cd ~/.emacs.d/
    touch config/custom.el
    git submodule init
    git submodule update
    cd vendor/rinari
    git submodule init
    git submodule update


Finally, create a file called `~/.emacs` and place the following two lines in it:

    (add-to-list 'load-path "~/.emacs.d")
    (load "~/.emacs.d/init.el")

You can put local configurations in config/custom.el. Any passwords
should go in ~/.emacs.d/.passwords. Both of these files are ignored by
Git.