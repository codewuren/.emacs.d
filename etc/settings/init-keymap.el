;;; init-keymap.el
;;; Author: CodeWuRen

; Create the C-q map
(define-prefix-command 'ctl-q-map) 

; Set the ctl-z-map
(global-set-key (kbd "C-q") 'ctl-q-map) 

; Open emacs config directory
(global-set-key (kbd "C-q c") 'open-config-directory)

(provide 'init-keymap)
