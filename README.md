Installation instructions
=========================

* git clone https://github.com/cbaumbach/emacs.d.git ~/.emacs.d
* cd ~/.emacs.d
* git submodule init
* git submodule update

haskell-mode
------------
* cd ~/.emacs.d/elisp/haskell-mode

If the variable delete-selection-mode is void in your version of
emacs, append "--eval '(setq delete-selection-mode nil)'" to the
make variable EFLAGS in ~/.emacs.d/elisp/haskell-mode/Makefile.

* make

If you modified the Makefile before running make, undo your changes.

org-mode
--------
* cd ~/.emacs.d/elisp/org-mode

Always run most recent, stable org-mode release.

* git checkout -b stable origin/maint
* make autoloads
