;; init.el -- emacs initial file

(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "tomels/common/")))
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "tomels/program/")))



(require 'basic_t)
(require 'keymap_t)
(require 'package_t)

;; program settings

(require 'program_t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" default))
 '(package-selected-packages
   '(magit lsp-treemacs flycheck rustic lsp-ui lsp-mode rainbow-delimiters treemacs company-box company doom-themes pyim-basedict pyim use-package)))
