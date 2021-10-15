;;; js-comint --- for nodejs REPL
;;; Commentary:

;;; Code:
(setq inferior-js-program-command "node --interactive")

(add-hook 'js2-mode-hook
          '(lambda ()
			 (local-set-key (kbd "C-c C-c") 'js-send-last-sexp)
			 (local-set-key (kbd "C-x C-r") 'js-send-region)
			 (local-set-key (kbd "C-c b") 'js-send-buffer)
(provide 'init-js-comint)
;;; init-js-comint ends here
