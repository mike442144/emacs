;;; init-minuet.el

(require 'minuet)

(with-eval-after-load 'minuet
  (setq minuet-provider 'openai-compatible)

  (plist-put minuet-openai-compatible-options
			 :end-point
			 "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions")
  (plist-put minuet-openai-compatible-options
			 :api-key
			 "DASHSCOPE_API_KEY")
  (plist-put minuet-openai-compatible-options
			 :model
			 "qwen3-coder-plus")

  (define-key minuet-active-mode-map (kbd "TAB") #'minuet-accept-suggestion)
  (define-key minuet-active-mode-map (kbd "M-f") #'minuet-accept-suggestion-by-word)
  (define-key minuet-active-mode-map (kbd "M-n") #'minuet-next-suggestion)
  (define-key minuet-active-mode-map (kbd "M-p") #'minuet-previous-suggestion)
  (define-key minuet-active-mode-map (kbd "C-g") #'minuet-dismiss-suggestion))

(add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)

(provide 'init-minuet)
