;;; NOTE: This code can only be called after "-remove" and "match-any"
;;; are known, that is, after dash and setup-defuns were loaded.

;;; Remove compatibility version of cl-lib from load-path if running
;;; under emacs version >= 24.3.
(when (and (>= emacs-major-version 24)
           (>= emacs-minor-version 3))
  (setq load-path (-remove (match-any "/cl-lib$") load-path)))

(provide 'clean-up-load-path)
