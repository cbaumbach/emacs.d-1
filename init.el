;;; Inhibit loading default init file.
(setq inhibit-default-init t)

;;; Setup load-path.
(setq site-lisp-dir
      (expand-file-name "elisp" user-emacs-directory))

(add-to-list 'load-path site-lisp-dir)

(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(add-to-list 'load-path (concat user-emacs-directory "my-settings"))

(require 'setup-appearance)
(require 'setup-defuns)
(require 'setup-whitespace)
(require 'setup-scrolling)
(require 'setup-dired-mode)
(require 'setup-org-mode)
(require 'setup-proced-mode)
(require 'setup-expand-region-mode)
(require 'setup-multiple-cursors-mode)
(require 'setup-undo-tree-mode)
(require 'setup-ace-jump-mode)
(require 'setup-git-modes)
(require 'setup-paredit-mode)
(require 'setup-ido-mode)
(require 'setup-auto-saving)
(require 'setup-ediff)
(require 'setup-ess-mode)
(require 'setup-tex-modes)
(require 'setup-haskell-mode)
(require 'setup-indentation)
(require 'setup-fonts)
(require 'setup-misc)
(require 'setup-magit)
(require 'setup-keybindings)

;;; Load aliases.
(let ((alias-file "~/.emacs.d/.alias.el"))
  (when (file-readable-p alias-file)
    (load alias-file)))
