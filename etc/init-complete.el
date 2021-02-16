;;;===========================================
;;;					模块介绍
;;; 代码自动补全模块，使用company作为基础补全框架
;;; 使用lsp作为全线补全后端
;;; 提供yasnippet，支持代码片段快速插入
;;;===========================================

;; MODULE: CODE COMPLETE

;; AUTHOR: EvanMeek the_lty_mail@foxmail.com

;; CODE:

;; 著名的Emacs补全框架
(use-package company 
  :hook (prog-mode . company-mode) 
  :init (setq company-tooltip-align-annotations t company-idle-delay 0 company-echo-delay 0
              company-minimum-prefix-length 1 company-require-match nil company-dabbrev-ignore-case
              nil company-dabbrev-downcase nil company-show-numbers t) 
  :config 
  :bind (:map company-active-map
              ("M-n" . nil) 
              ("M-p" . nil) 
              ("C-n" . #'company-select-next) 
              ("C-p" . #'company-select-previous)))

;; 美化company
(use-package company-box 
  :ensure t 
  :hook (company-mode . company-box-mode))

;; 代码片段
(use-package yasnippet 
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/etc/snippets")))

(provide 'init-complete)