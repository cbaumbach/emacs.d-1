;;; Scroll only line-wise when point leaves the window.
(setq scroll-conservatively 1)

;;; Preserve screen position when scrolling by screenfuls.
(setq scroll-preserve-screen-position t)

;;; Change order for recenter-top-bottom.
(setq recenter-positions '(top bottom middle))

(provide 'setup-scrolling)
