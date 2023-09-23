;;; init-function.el
;;; Author: CodeWuRen
(defun open-config-directory () 
	"Open emacs config directory."
        (interactive)
	(dired "~/.emacs.d"))

(provide 'init-function)
