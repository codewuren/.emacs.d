;; 设置光标样式
(setq-default cursor-type 'box)

;; 去除默认启动界面
(setq inhibit-startup-message t)

;; 字体设置
(set-frame-font "JetBrains Mono 20" nil t)

;; 关闭状态栏
;; (setq-default mode-line-format nil)

;; 启动时最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; 高亮当前行
(global-hl-line-mode 1)

;; 竖线
(use-package page-break-lines
  :ensure t
  :hook (after-init . page-break-lines-mode))

;; 让info帮助信息中关键字有高亮
(use-package info-colors 
  :ensure t 
  :hook ('Info-selection-hook . 'info-colors-fontify-node))

;; 缩进线
(use-package highlight-indent-guides
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'bitmap))

;; 主题包
(use-package doom-themes
  :ensure t
  :config
    (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t))

;; 加载主题
(load-theme 'doom-dracula t)

;; 透明窗口
(set-frame-parameter nil 'alpha '(85 . 100))

;; awesome-tray配置
(require 'awesome-tray)
(awesome-tray-mode 1)

;; 中文字体设置
(dolist (charset '(kana han cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
                    (font-spec :family "微软雅黑" :size 30)))

(provide 'init-ui)
