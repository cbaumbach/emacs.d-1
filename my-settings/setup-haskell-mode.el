(when (string-equal system-type "gnu/linux")
  (require 'haskell-mode-autoloads)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))

(provide 'setup-haskell-mode)
