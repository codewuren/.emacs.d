;; yes-or-no-p to y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;; 设置缓存文件/杂七杂八的文件存放的地址
(setq user-emacs-directory "~/.emacs.d/var")
(setq desktop-dirname "~/.emacs.d/var/desktop-save")

;; 设置自动保存路径前缀
(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/.saves-")

;; 设置eshell历史记录
(setq eshell-history-file-name "~/.emacs.d/var/eshell/history")
(setq recentf-save-file "~/.emacs.d/var/recentf")
(setq recentf-max-menu-items 20)
(set-default 'truncate-lines t)

;; 关闭滚动条
;; (push '(scroll-bar-mode -1) graphic-only-plugins-setting)
(scroll-bar-mode -1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 自动刷新被修改过的文件
(global-auto-revert-mode +1)

;; 选中文本后输入会覆盖
(delete-selection-mode +1)

;; 关闭备份
(setq make-backup-files nil auto-save-default nil)

;; 关闭多编辑器同时编辑统一文件时锁文件操作
(setq create-lockfiles nil)

;; 随时重新加载发生修改过的文件
(setq load-prefer-newer t)

;; 关闭字体缓存gc
(setq inhibit-compacting-font-caches nil)

;; 关闭烦人的提示
(setq ring-bell-function 'ignore blink-cursor-mode nil)

;; 更友好及平滑的滚动
(setq scroll-step 2
      scroll-margin 6
      hscroll-step 2
      hscroll-margin 2
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-preserve-screen-position 'always)

;; 关闭自动调节行高
(setq auto-window-vscroll nil)

;; 关闭自动换行的功能
(setq truncate-partial-width-windows nil)

;; 让光标无法离开视线
(setq mouse-yank-at-point nil)

;; 最大单行字符数量
(setq-default fill-column 80)

;; 允许插入制表符
(setq-default indent-tabs-mode nil)

;; 制表符宽度
(setq-default tab-width 4)

;; 高亮对应的括号
(show-paren-mode 1)

;; 键位提示
(use-package which-key
  :ensure t
  :custom
  ;; 弹出方式，底部弹出
  (which-key-popup-type 'side-window)
  :config
  (which-key-mode 1))

;; 相对行号，默认未开启
(use-package linum-relative
  :ensure t
  :hook ('prog-mode . 'linum-relative-mode))

(provide 'init-basic)
