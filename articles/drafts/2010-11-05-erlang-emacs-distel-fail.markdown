title: How I failed to refactor effectively with Erlang distel
slug: erlang-emacs-distel-fail 

erlang refactoring through distel & wrangler
============================================
main goal is refactoring capacity

install emacs
=============
either

* aquamacs
* brew install emacs --cocoa
* carbon emacs

caveats
-------
brewed emacs does not ship with color-theme...

install distel
==============
it is not available as brew formula

hand compile and install
------------------------

    ~/src/emacs $ git clone https://github.com/massemanet/distel.git && cd distel
    ~/src/emacs/distel (master)$ make install    
    
resources
---------
* [Clementson](http://bc.tech.coop/blog/070528.html)
* [code](https://github.com/massemanet/distel) on github


wrangler
========
    brew install wrangler

caveats
-------
INSTALL file is not provided by brewed formula

resources
---------
* [wrangler home](http://www.cs.kent.ac.uk/projects/forse/)

Configure all this elisp code!
==============================
~/.emacs

    ;; erlang mode
    (setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.6.6.1/emacs" load-path))
    (setq erlang-root-dir "/usr/local/lib/erlang")
    (setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
    (require 'erlang-start)

    ;; distel mode
    (setq load-path (cons  "/usr/local/share/distel/elisp" load-path))
    (require 'distel)
    (distel-setup)
    
    ;; wrangler
    (setq load-path (cons  "/usr/local/share/wrangler/elisp" load-path))
    (require 'wrangler)

With all that, I was unable to perform a rename|extract method refactoring :|

__1 fail__
