;; init-package.el -- package settings
;; local package archives
;; (setq package-archives '(("gnu" . "~/elpa/gnu/")
;;                          ("melpa" . "~/elpa/melpa/")
;;                          ("nongnu" . "~/elpa/nongnu/")))
;;("melpa-stable" . "~/elpa/stable-melpa")))

;; cn package archives
;; (setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
;;                          ("nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/")))
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;(setq package-check-signature nil) ;个别时候会出现签名校验失败
(unless (bound-and-true-p package--initialized) 
  (package-initialize)) ;; 刷新软件源索引
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package) 
  (package-refresh-contents) 
  (package-install 'use-package))

(setq-default use-package-always-ensure t)

(use-package pyim
  :config
  (setq default-input-method "pyim")
  (setq pyim-page-length 5))

(use-package pyim-basedict
  :config
  (setq pyim-cloudim 'baidu)
  (setq pyim-page-style 'vertical)
  (pyim-basedict-enable))

(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one-light t) 
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config))
  ;; for treemacs users
  ;;(setq doom-themes-treemacs-theme "doom-one") ; use "doom-colors" for less minimal icon theme
  ;;(doom-themes-treemacs-config))

;; magit
(use-package magit
  :ensure t)

(provide 'package_t)
