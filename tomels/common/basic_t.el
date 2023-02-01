;; init-basic.el -- basic settings

(electric-pair-mode)
;;(global-display-line-numbers-mode)
(column-number-mode)
(setq use-short-answers t) ;; y/n instead of yes/no

;;font size
(if (window-system)
    (progn
      (set-face-attribute 'default nil :font "Blexmono Nerd Font Mono 20")
      (setq face-font-rescale-alist '(("STHeiti" . 1)))
      (dolist (charset '(kana han cjk-misc)) ;; chinese size
	(set-fontset-font (frame-parameter nil 'font)
			  charset
			  (font-spec :family "STHeiti" :size 20)))))


;; line spacing

(setq-default line-spacing 0.2) ;; company box should add line-spacing ,like this
;; 01. define a local variable to indicate line-spacing real value,
;; (defvar-local lsp-local ((lambda ()
;; 		    (let ((lsp (if (display-graphic-p)
;; 				   (or line-spacing
;; 				       (default-value 'line-spacing)
;; 				       (frame-parameter nil 'line-spacing)
;; 				       0)
;; 				 0)))
;; 		      (if (floatp lsp)
;; 			  (setq lsp (truncate (* (frame-char-height) lsp))))
;; 		      lsp
;; 		      )
;; 	     	    )))
;;
;; 01. add lsp-local to char-height in company-box.el
;; (top (+ top window-tab-line-height))
;; (char-height (+ lsp-local (frame-char-height frame))) <-------> in this line
;; (char-width (frame-char-width frame))
;;
;; 03. delete company-box.elc ,the complied el file, the real autoload file and restart emacs
;;


;; frame position and size
(setq default-frame-alist '((top . 99) (left . 195) (width . 110) (height . 32)))

;; (set-frame-position (selected-frame) 120 49)
;; (add-to-list 'default-frame-alist '(width  . 120))
;; (add-to-list 'default-frame-alist '(height . 32))

;;(frame-position (selected-frame))
;;(frame-width (selected-frame))
;;(frame-height (selected-frame))		;

;;(set-frame-width (selected-frame) 130)



(setq inhibit-startup-screen t) ;; startup screen
(tool-bar-mode 0) ;; hide tool bar
(scroll-bar-mode 0)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq resize-mini-windows t)
(size-indication-mode) ;; file size show

(setq-default left-margin-width 3 right-margin-width 2) ; Define new widths.

()
(setq-default left-fringe-width 0)
(setq-default right-fringe-width nil) ;; show the arrow if long line, if it is too small, the arrow icon will be hidden
(set-window-buffer nil (current-buffer)) ; Use them now.

(setq max-mini-window-height 0.8)
(provide 'basic_t)
