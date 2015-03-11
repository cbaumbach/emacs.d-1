(when (string-equal system-type "gnu/linux")
  (require 'magit)

  ;; Remove some annoying highlighting.
  (set-face-attribute 'magit-section-title nil :inherit nil)
  (set-face-attribute 'magit-item-highlight nil :inherit nil)
  (set-face-attribute 'magit-diff-file-header nil :inherit nil))

(provide 'setup-magit)
