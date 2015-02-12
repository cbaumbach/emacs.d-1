(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/contrib/lisp" t)
(require 'org-install)

;;; Enable evaluation of shell script snippets via org-babel.
(require 'ob-sh)

(provide 'setup-org-mode)
