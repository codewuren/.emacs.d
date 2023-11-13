;;; init-rust.el

(use-package rust-mode
    :ensure t
    :hook (rust-mode . lsp)
    :config
    (setq rust-format-on-save t))


(add-hook 'rust-mode-hook #'lsp)


(provide 'init-rust)
