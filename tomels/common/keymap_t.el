;; init-keymap.el -- keymap settings

;; find init.el
(defun find-init-file ()
  (interactive)
  (find-file (expand-file-name (concat user-emacs-directory "init.el"))))

;; find tomels init file
(defun find-tomels-init-file (filename)
  (interactive
      (list (read-file-name
	  "Find tomels init file: "
	  (expand-file-name (concat user-emacs-directory "tomels/"))
	  nil
	  (confirm-nonexistent-file-or-buffer))))
  (let ((value (find-file-noselect filename)))
    (pop-to-buffer-same-window value)
    ))

;; new line and indent
(defun open-new-blank-indent-line ()
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

;; full screen
(defvar-local fullscreen-tool-bar-mode-enable 0)
(defun fullscreen ()
  (interactive)
  (set-frame-parameter (selected-frame) 'tool-bar-lines
		       ((lambda ()
			 (setq fullscreen-tool-bar-mode-enable
			       (if (> fullscreen-tool-bar-mode-enable 0)
				   0
				 1))
			 fullscreen-tool-bar-mode-enable)))
  (toggle-frame-fullscreen))

(global-set-key (kbd "M-RET") 'eshell)
(global-set-key (kbd "<f2> 1") 'find-init-file)
(global-set-key (kbd "<f2> 3") 'find-tomels-init-file)
(global-set-key (kbd "S-<return>") 'open-new-blank-indent-line)
(global-set-key (kbd "C-x a f") 'fullscreen)

(provide 'keymap_t)
