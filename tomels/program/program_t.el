;; program_t.el -- program language settings

;; ;; eglot
;; (use-package eglot
;;   :disabled t
;;   :config
;; ;;  (add-to-list 'eglot-server-programs
;; ;;	       '(rustic-mode . "~/.cargo/binrust-analyzer"))
;;   (add-to-list 'eglot-server-programs
;; 	       '(js2-mode . ("typescript-language-server" "--stdio")))
;;   :hook ((rustic-mode . eglot-ensure)
;; 	 (js2-mode . eglot-ensure)
;; 	 (js-mode . eglot-ensure))
;;   )

(use-package js2-mode
  :disabled t
   )
;; company
(use-package company
  :ensure t
;;  (setq company-tooltip-flip-when-above t)
  ;;(setq company-tooltip-offset-display 'lines)
;;  (setq company-tooltip-minimum 3)
  :config
  (setq company-minimum-prefix-length 1)
  ;;(setq company-tooltip-maximum-width (round (* (frame-width) 0.8)))
;;  (setq company-tooltip-offset-display 'lines)
  (setq company-idle-delay
	(lambda () (if (company-in-string-or-comment) nil 0)))
  (setq company-tooltip-limit 5)
  (setq company-tooltip-align-annotations t)
  (setq company-lighter-base "")
  :hook ((after-init . global-company-mode)
	 (minibuffer-setup . global-company-mode))
  :bind ((:map company-active-map
	       ("<tab>" . company-complete-common-or-cycle)
	       ("<backtab>" . (lambda ()
				(interactive)
				(company-complete-common-or-cycle -1)))))
  )
;; company box
(use-package company-box
  :ensure t
  :config
  (setq company-box-doc-enable nil) ;; 补全时不显示右侧提示frame
  (setq company-box-scrollbar 'right)
  (setq company-box-lighter " c-b")
  :hook (company-mode . company-box-mode);; 启动company-mode 时，启动company-box-mode，这样两个模式就有依赖了
  )

(use-package all-the-icons
  )

;; treemacs
(use-package treemacs)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;(use-package company-quickhelp
  ;; :hook (company-mode . company-quickhelp-mode))

;;(load-theme 'tango-dark)
(require 'lsp_t)
;;(require 'rust_t)

(provide 'program_t)
