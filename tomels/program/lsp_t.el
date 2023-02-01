;; lsp_t.el -- lsp mode and program settings

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-rust-analyzer-cargo-watch-command "clippy") ;; fix first time can't find error like 'let x;'
  (setq lsp-idle-delay 0.1)
  (setq lsp-signature-auto-activate nil) ;; 当键入函数时，minibuffer 不弹出函数doc
  :bind
  (:map lsp-mode-map
	("M-j" . lsp-ui-imenu)) ;; q to quit
  :hook ((rustic-mode . lsp-deferred)
	 (js-mode . lsp-deferred)
	 )
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :config
  ;;(setq lsp-ui-sideline-show-hover nil)
  (setq lsp-ui-sideline-show-diagnostics t)
  ;;(setq lsp-ui-sideline-show-code-actions t) ;
  ;;(setq lsp-ui-sideline-show-symbol t)
  (setq lsp-ui-sideline-delay 0.2)
  ;; doc
  (setq lsp-ui-doc-show-with-cursor nil)
  (setq lsp-ui-doc-position 'at-point)
;;  (setq lsp-ui-doc-)
  ;; imenu
  (setq lsp-ui-imenu-auto-refresh t)
  ;;(setq lsp-ui-imenu-window-width (* (frame-width) 0.35))
  ;; peek
  ;;(setq lsp-ui-peek-always-show nil)
  )


;; rust
(use-package rustic
  :config
  (setq rustic-lsp-server 'rust-analyzer)
  (setq rustic-format-on-save nil)
  :bind
  (:map rustic-mode-map
	      ("C-c C-c l" . flycheck-list-errors))
  )

(use-package flycheck
  )

(use-package lsp-treemacs
  :ensure
  :config
  (lsp-treemacs-sync-mode 1)
  )

(provide 'lsp_t)

  
