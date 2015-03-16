;;; Remove org-mode from load path.
(setq load-path (-remove (match-any "/org-mode$") load-path))

;;; Add org-mode/lisp and org-mode/contrib/lisp to load-path.
(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/contrib/lisp" t)

(require 'org-install)

;;; Enable evaluation of shell script snippets via org-babel.
(require 'ob-sh)

(provide 'setup-org-mode)
