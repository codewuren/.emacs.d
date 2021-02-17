(defun open-config-file ()
  "Open the init.el file."
  (interactive)
  (dired "~/.emacs.d/"))

(defun sudo-save ()
  "Save the current buffer file with sudo."
  (interactive)
  (if (not buffer-file-name)
      (write-file (concat "/sudo:root@localhost:" (ido-read-file-name "File:")))
    (write-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun open-code-file ()
  "Open ~/code file."
  (interactive)
  (dired "~/code"))

(provide 'init-functions)
