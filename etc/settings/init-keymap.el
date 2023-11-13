;;; init-keymap.el
;;; Author: CodeWuRen

;; Create the C-q map
(define-prefix-command 'ctl-q-map) 

;; Set the ctl-z-map
(global-set-key (kbd "C-q") 'ctl-q-map) 

;; Open emacs config directory
(global-set-key (kbd "C-q e") 'open-emacs-config-directory)

;; Open code directory
(global-set-key (kbd "C-q c") 'open-code-directory)

;; Awesome tab keymaps
(global-set-key (kbd "C-q b") 'awesome-tab-backward-tab)
(global-set-key (kbd "C-q n") 'awesome-tab-forward-tab)


(provide 'init-keymap)
