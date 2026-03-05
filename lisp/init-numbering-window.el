;;; init-numbering-window.el
;; Must be set BEFORE (require 'winum)
(setq winum-keymap
	  (let ((map (make-sparse-keymap)))
		(define-key map (kbd "M-1") 'winum-select-window-1)
		(define-key map (kbd "M-2") 'winum-select-window-2)
		(define-key map (kbd "M-3") 'winum-select-window-3)
		(define-key map (kbd "M-4") 'winum-select-window-4)
		(define-key map (kbd "M-5") 'winum-select-window-5)
		map))

(require 'winum)
(add-hook 'after-init-hook 'winum-mode)

(provide 'init-numbering-window)
