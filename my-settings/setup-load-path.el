(setq site-lisp-dir (expand-file-name "elisp" user-emacs-directory))

;;; Add all directories located in site-lisp-dir to load-path.
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(provide 'setup-load-path)
