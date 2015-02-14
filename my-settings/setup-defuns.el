(defun eval-and-replace ()
  "Eval and replace last s-expression."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
         (current-buffer))
    (error (message "Invalid expression.")
       (insert (current-kill 0)))))

(defun switch-to-buffer-list-other-window ()
  "Switch to buffer list in other window."
  (interactive)
  (list-buffers)
  (switch-to-buffer-other-window "*Buffer List*" nil))

(defun this-file-name ()
  "Insert current filename after stripping directory."
  (interactive)
  (let ((path (buffer-file-name)))
    (insert (substring path (1+ (position ?/ path :from-end t))))))

(defun copy-file-name-to-register (c)
  "Copy file name of current buffer to register."
  (interactive "cCopy to register:")
  (let ((filename (buffer-file-name)))
    (if filename
        (set-register c (cons 'file filename))
      (error "Buffer not associated with any file."))))

(defun delete-or-kill-region (n)
  "With prefix arg same as delete-region, otherwise kill-region."
  (interactive "P")
  (let ((start (region-beginning))
        (end (region-end)))
    (if (null n)
        (kill-region start end)
      (delete-region start end))))

(defun beginning-of-dired-buffer ()
  "Move to first file or directory in dired buffer skipping `.' and `..'."
  (interactive)
  (beginning-of-buffer)
  (diredp-next-line 1)
  (while (looking-at "[.][.]?$")
    (diredp-next-line 1)))

(defun end-of-dired-buffer ()
  "Move to last file or directory in dired buffer."
  (interactive)
  (end-of-buffer)
  (diredp-previous-line 1))

(provide 'setup-defuns)
