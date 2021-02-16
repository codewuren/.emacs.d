;; Emacs对语言服务器支持的插件
(use-package lsp-mode
  :ensure t
  :defer 2
  :commands (lsp)
  :hook ((java-mode js-mode js2-mode web-mode c-mode c++-mode objc-mode python-mode rust-mode) . lsp)
  :custom
  (lsp-auto-guess-root nil)
  (lsp-file-watch-threshold 2000)
  (read-process-output-max (* 1024 10240))
  (lsp-eldoc-hook nil)
  (lsp-prefer-flymake nil)
  :config
  (setq lsp-prefer-capf t))

;; 美化lsp-mode
(use-package 
  lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode)
  :config
  ;; sideline
  (setq lsp-ui-sideline-show-diagnostics t
        lsp-ui-sideline-show-hover t
        lsp-ui-sideline-show-code-actions nil
        lsp-ui-sideline-update-mode 'line
        ;; sideline
        lsp-ui-sideline-delay 1)
  ;; peek
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; doc
  (setq lsp-ui-doc-enable t
        ;; 文档显示的位置
        lsp-ui-doc-position 'top
        lsp-ui-sideline-enable nil
        lsp-signature-render-documentation nil))

(provide 'init-lsp)