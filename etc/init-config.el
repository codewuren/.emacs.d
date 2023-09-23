;;; init-config.el
;;; Author: CodeWuRen
;;; This file is used to load other config files.

; Add to list
(add-to-list 'load-path "~/.emacs.d/etc/settings")
(add-to-list 'load-path "~/.emacs.d/etc/plugins")

; Require
(require 'init-basic)
(require 'init-function)
(require 'init-keymap)
(require 'init-plugins)

(provide 'init-config)
