
(add-to-list 'load-path (concat user-emacs-directory "elpa/lsp-bridge-20230124.1101/"))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(require 'lsp-bridge)
(global-lsp-bridge-mode)


(provide 'lsp_bridge_t)
