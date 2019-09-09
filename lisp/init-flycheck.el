;;; init-flycheck.el --- Configure Flycheck global behaviour -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'global-flycheck-mode)
(add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
			   (display-buffer-reuse-window
				display-buffer-in-side-window)
			   (side            . bottom)
			   (reusable-frames . visible)
			   (window-height   . 0.2)))
(provide 'init-flycheck)
;;; init-flycheck.el ends here
