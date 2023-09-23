;;; init-function.el
;;; Author: CodeWuRen
(defun open-emacs-config-directory () 
	"Open emacs config directory."
        (interactive)
	(dired "~/.emacs.d"))

(defun open-code-directory () 
	"Open code directory."
        (interactive)
	(dired "~/code"))


(provide 'init-function)
