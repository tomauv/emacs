;; rust_t.el -- rust settings



;; (use-package rustic
;;   :ensure
;;   :config
;;   (setq rustic-lsp-server 'rust-analyzer)
;;   :bind (:map rustic-mode-map
;;               ("M-j" . lsp-ui-imenu)
;;               ("M-?" . lsp-find-references)
;;               ("C-c C-c l" . flycheck-list-errors)
;;               ("C-c C-c a" . lsp-execute-code-action)
;;               ("C-c C-c r" . lsp-rename)
;;               ("C-c C-c q" . lsp-workspace-restart)
;;               ("C-c C-c Q" . lsp-workspace-shutdown)
;;               ("C-c C-c s" . lsp-rust-analyzer-status)
;;               ("C-c C-c e" . lsp-rust-analyzer-expand-macro)
;;               ("C-c C-c d" . dap-hydra)
;;               ("C-c C-c h" . lsp-ui-doc-glance)))

(use-package toml-mode
  :ensure)

(provide 'rust_t)
