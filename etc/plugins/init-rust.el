;;; init-rust.el

(use-package rust-mode
    :ensure t
    :hook (rust-mode . lsp)
    :config
    (setq rust-format-on-save t))

(add-hook 'rust-mode-hook #'lsp)

(use-package cargo
    :ensure t
    :config (add-hook 'rust-mode-hook 'cargo-minor-mode))


(provide 'init-rust)
