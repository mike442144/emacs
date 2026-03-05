;;; init-gptel.el
(require 'gptel)

;; Claude backend
(setq my-gptel-claude
      (gptel-make-anthropic "Claude"
	:stream t
	:key (getenv "ANTHROPIC_API_KEY")))

;; Qwen backend (OpenAI-compatible)
(setq my-gptel-qwen
      (gptel-make-openai "Qwen"
	:host "dashscope.aliyuncs.com"
	:endpoint "/compatible-mode/v1/chat/completions"
	:stream t
	:key (getenv "DASHSCOPE_API_KEY")
	:models '(qwen-flash
		  qwen-plus
		  qwen-max
		  qwen-long
		  qwen3-coder-plus
		  kimi-k2.5
		  glm-5
		  MiniMax-M2.5
		  )))

;; Set default (switch between them anytime)
(setq gptel-backend my-gptel-qwen
      gptel-model 'qwen3-coder-plus)

(global-set-key (kbd "C-c g") 'gptel)
(global-set-key (kbd "C-c RET") 'gptel-send)

(provide 'init-gptel)
