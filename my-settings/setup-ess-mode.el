;;; Remove ESS directory from load-path.
(setq load-path (-remove (match-any "/ESS$") load-path))

(setq ess-default-style 'C++)

;;; This automatically adds ESS/lisp to load-path.
(load "~/.emacs.d/elisp/ESS/lisp/ess-site.el")

;;; Treat "$" like a space or "-" in R code.
(add-hook 'ess-mode-hook
          #'(lambda () (modify-syntax-entry ?$ "-")))

(setq ess-eval-visibly 'nowait)

(ess-toggle-S-assign nil)               ; disable smart "_" key

(setq ess-history-file nil)

(provide 'setup-ess-mode)
