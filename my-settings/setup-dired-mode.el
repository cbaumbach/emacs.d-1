(require 'dired+)

;;; Omit uninteresting files and directories in dired mode.  Toggle
;;; using C-x M-o.
(setq-default dired-omit-mode t)

;;; List files in human readable format in dired-mode.
(setq-default dired-listing-switches "-alh")

(require 'dired-details)

;;; Reduce clutter in dired display.
(setq-default dired-details-hidden-string "--- ")
(dired-details-install)

(provide 'setup-dired-mode)
