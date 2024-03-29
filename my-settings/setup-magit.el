(when (string-equal system-type "gnu/linux")
  (require 'magit)

  ;; Remove some annoying highlighting.
  (set-face-attribute 'magit-section-title nil :inherit nil)
  (set-face-attribute 'magit-item-highlight nil :inherit nil)
  (set-face-attribute 'magit-diff-file-header nil :inherit nil)

  ;; Recenter screen after hiding details.
  (defun magit-show-level-2-all-recenter ()
    "Show only level 2 details and recenter screen."
    (interactive)
    (magit-show-level-2-all)
    (recenter-top-bottom)
    (previous-line 1))

  (add-hook 'magit-mode-hook
            #'(lambda ()
                (local-set-key (kbd "M-2") 'magit-show-level-2-all-recenter))))

(provide 'setup-magit)
