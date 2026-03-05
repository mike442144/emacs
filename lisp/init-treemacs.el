(require 'treemacs)

;; Require treemacs-magit
(require 'treemacs-magit)

(require 'treemacs-all-the-icons)

(setq treemacs-width 30                  ; sidebar width, like neotree
	  treemacs-show-hidden-files t
	  treemacs-follow-after-init t)

(treemacs-load-theme "all-the-icons")

;; Open treemacs automatically on startup
;;;(add-hook 'after-init-hook 'treemacs)
(provide 'init-treemacs)
