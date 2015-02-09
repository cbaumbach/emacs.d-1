;;; Enable all disabled commands.
(setq disabled-command-function nil)

;;; Eliminate long "yes" or "no" prompts.
(fset 'yes-or-no-p 'y-or-n-p)

;;; No backup files, please.
(setq make-backup-files nil)

;;; Save bookmarks inside of .emacs.d.
(setq bookmark-default-file "~/.emacs.d/bookmarks")

(defun leave-point-at-beginning-of-match ()
  "Leave point at beginning of match when searching forward."
  (unless isearch-mode-end-hook-quit
    (when (and isearch-forward isearch-success)
      (goto-char isearch-other-end))))

(add-hook 'isearch-mode-end-hook
          #'leave-point-at-beginning-of-match)

;;; Delete/overwrite active region.  As a side-effect this also
;;; activates transient-mark-mode which we don't want, so we
;;; deactivate it immediately afterwards.
(if (fboundp 'delete-selection-mode)
    (delete-selection-mode 1))
(transient-mark-mode -1)

;;; Increase length of message log.
(setq message-log-max 1000)

;;; Delete previous identical elemens from minibuffer history before
;;; adding new element.
(setq history-delete-duplicates t)

;;; Set width for formatting man pages.
(setq Man-width 90)

;;; Use xdvi to view dvi files.
(setq-default tex-dvi-view-command "xdvi")

;;; Set printing options.
(setq ps-paper-type 'a4
      ps-font-size 10
      ps-print-header nil
      ps-left-margin 72
      ps-right-margin 72)

;;; Use cperl-mode instead of perl-mode.
(defalias 'perl-mode 'cperl-mode)

(provide 'setup-misc)
