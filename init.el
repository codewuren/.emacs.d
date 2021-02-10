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

