(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-q") 'ctl-z-map)	

(global-set-key (kbd "C-q i") 'open-config-file)
(global-set-key (kbd "C-q C-b") 'buffer-menu)
(global-set-key (kbd "C-q S") 'sudo-save)
(global-set-key (kbd "C-q n") 'netease-cloud-music)

(provide 'init-keymaps)
