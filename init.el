;; 递归遍历加载路径
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`."
  (let ((default-directory (file-name-as-directory dir)))
  (add-to-list 'load-path dir)
  (normal-top-level-add-subdirs-to-load-path)))

(let ((gc-cons-threshold most-positive-fixnum)
  (file-name-handler-alist nil))
  (add-subdirs-to-load-path "~/.emacs.d/etc/"))

(require 'init-config)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cl-lib-highlight cl-libify posframe emojify all-the-icons-dired all-the-icons yasnippet which-key use-package page-break-lines modern-cpp-font-lock lsp-ui lsp-pyright linum-relative info-colors highlight-indent-guides eglot doom-themes company-box ccls)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
