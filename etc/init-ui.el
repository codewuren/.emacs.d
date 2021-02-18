;; 设置光标样式
(setq-default cursor-type 'box)

;; 去除默认启动界面
(setq inhibit-startup-message t)

;; 字体设置
(set-frame-font "JetBrains Mono 20" nil t)

;; 不显示标签栏
(tab-bar-mode -1)

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

(use-package all-the-icons
	:ensure t)
  ;; dired模式图标支持
(use-package all-the-icons-dired
  :ensure t
  :hook ('dired-mode . 'all-the-icons-dired-mode))
;; 表情符号
(use-package emojify
  :ensure t
  :custom (emojify-emojis-dir "~/.emacs.d/var/emojis"))
;; 浮动窗口支持
(use-package posframe
  :ensure t
  :custom
  (posframe-mouse-banish nil))

;; 透明窗口
(set-frame-parameter nil 'alpha '(85 . 100))

;; 中文字体设置
(dolist (charset '(kana han cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
                    (font-spec :family "wqy-microhei" :size 30)))

;; awesome-tray配置
(require 'awesome-tray)
(awesome-tray-mode 1)

;; awesome-tab设置
;; (require 'awesome-tab)
;; (awesome-tab-mode t)

(defun awesome-tray-netease-current-song ()
  (when (netease-cloud-music-process-live-p)
    (format "%s-%s"
            (car netease-cloud-music-current-song)
            (nth 1 netease-cloud-music-current-song))))

(defun awesome-tray-module-input-method-info ()
  (pcase current-input-method
    ('nil "EN")
    ("pyim" "ZN")
    ("japanese" "JA")))

(defun awesome-tray-read-only ()
  (if (eq buffer-read-only t)
      "read-only"
    ""))

(defun awesome-tray-buffer-modified ()
  (if (buffer-modified-p)
      "*"
    ""))

(defun awesome-tray-netease-current-song ()
  (when (netease-cloud-music-process-live-p)
    (format "%s-%s"
            (car netease-cloud-music-current-song)
            (nth 1 netease-cloud-music-current-song))))

(add-to-list 'awesome-tray-module-alist '("buffer-read-only" . (awesome-tray-read-only awesome-tray-module-parent-dir-face)))
(add-to-list 'awesome-tray-module-alist '("buffer-modified-p" . (awesome-tray-buffer-modified awesome-tray-module-date-face)))
(add-to-list 'awesome-tray-module-alist '("netease-current-song" . (awesome-tray-netease-current-song awesome-tray-module-mode-name-face)))

(setq awesome-tray-active-modules '("netease-current-song" "input-method" "location" "buffer-read-only"
                                    "buffer-modified-p" "git" "mode-name" "date"))

(provide 'init-ui)
