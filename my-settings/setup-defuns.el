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

(defun copy-file-name-to-register (file-name c)
  "Copy file name of into register."
  (interactive (let ((insert-default-directory t)
                     (read-file-name-completion-ignore-case t))
                 (if current-prefix-arg
                     (list (read-file-name
                            "File name: "      ; prompt
                            nil                ; directory
                            (buffer-file-name) ; default
                            nil)               ; require-match
                           (read-char "Copy to register: " nil))
                   (list (buffer-file-name)
                         (read-char "Copy to register: " nil)))))
  (cond ((null file-name)
         (error "Buffer not associated with any file."))
        ((not (funcall #'file-regular-p file-name))
         (error "Not a regular file: %s" file-name))
        ((not (funcall #'file-readable-p file-name))
         (error "Not a readable file: %s" file-name))
        (t
         (set-register c (cons 'file file-name)))))

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
