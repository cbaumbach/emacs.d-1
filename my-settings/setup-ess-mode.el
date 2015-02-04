(setq ess-default-style 'C++)

(add-to-list 'load-path "~/.emacs.d/elisp/ESS/lisp")

(load "ess-site")

;;; Treat "$" like a space or "-" in R code.
(add-hook 'ess-mode-hook
          #'(lambda () (modify-syntax-entry ?$ "-")))

(setq ess-eval-visibly 'nowait)

(ess-toggle-S-assign nil)               ; disable smart "_" key

(setq ess-history-file nil)

(provide 'setup-ess-mode)
