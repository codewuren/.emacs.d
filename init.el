;; 递归遍历加载路径
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`."
  (let ((default-directory (file-name-as-directory dir)))
  (add-to-list 'load-path dir)
  (normal-top-level-add-subdirs-to-load-path)))

(let ((gc-cons-threshold most-positive-fixnum)
  (file-name-handler-alist nil))
  (add-subdirs-to-load-path "~/.emacs.d/etc/"))


(add-to-list `load-path (expand-file-name "~/elisp"))
(require 'awesome-tray)
(awesome-tray-mode 1)
(require 'init-config)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(highlight-indent-guides info-colors page-break-lines which-key use-package linum-relative)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
