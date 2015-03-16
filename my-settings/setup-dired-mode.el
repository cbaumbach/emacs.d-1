(require 'dired+)

;;; Omit uninteresting files and directories in dired mode.  Toggle
;;; using C-x M-o.
(setq-default dired-omit-mode t)

;;; List files in human readable format in dired-mode.
(setq-default dired-listing-switches "-alh")

;;; Starting with emacs 24.4, directory details are hidden by default
;;; via dired-hide-details-mode.  Therefore we only need to load
;;; dired-details for earlier version of emacs (in which the command
;;; dired-hide-details-mode is not bound).
(cond ((not (fboundp 'dired-hide-details-mode))
       (require 'dired-details)
       ;; Reduce clutter in dired display.
       (setq-default dired-details-hidden-string "")
       (dired-details-install))
      (t
       ;; Make ")" also toggle dired-hide-details-mode so we can use
       ;; the same keys as with dired-details where "(" hides and ")"
       ;; unhides details.
       (add-hook 'dired-mode-hook
                 #'(lambda ()
                     (local-set-key (kbd ")") 'dired-hide-details-mode)))))

;;; Adjust M-< und M-> to jump to the first and last file/directory in
;;; dired buffer.
(add-hook 'dired-mode-hook
          #'(lambda ()
              (local-set-key (kbd "M-<") 'beginning-of-dired-buffer)
              (local-set-key (kbd "M->") 'end-of-dired-buffer)))

(provide 'setup-dired-mode)
