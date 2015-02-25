(add-hook 'latex-mode-hook
          (lambda ()
            (define-key latex-mode-map (kbd "M-}") 'forward-latex-environment)
            (define-key latex-mode-map (kbd "M-{") 'backward-latex-environment)))

(provide 'setup-tex-modes)
