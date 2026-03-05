;;; init.el: --- initialize modules
;;; Commentary:

;;; Code:
(add-to-list
 'load-path
 (expand-file-name "lisp" user-emacs-directory))

(if window-system
    (tool-bar-mode -1)
  )

(require 'init-js)
(require 'init-js-refactor)
(require 'init-js-comint)
(require 'init-elpa)
(require 'init-smex)
(require 'init-magit)
(require 'init-company)
(require 'init-all-the-icons)
(require 'init-treemacs)
(require 'init-flycheck)
(require 'init-markdown)
(require 'init-linum-mode)
(require 'init-web-beautify)
(require 'init-numbering-window)
(require 'init-rjsx-mode)
(require 'init-gptel)
(require 'init-minuet)

;;; (require 'color-theme-sanityinc-tomorrow)
(load-theme 'zenburn t)


;; (eval-after-load "org" '(require 'ox-md nil t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(indent-tabs-mode t)
 '(package-selected-packages
   '(ag all-the-icons color-theme-sanityinc-tomorrow company flycheck
		git-gutter gptel haskell-mode helm js-comint js2-mode
		js2-refactor json-mode magit markdown-mode meghanada minuet
		mocha org pug-mode rjsx-mode smex solarized-theme treemacs
		web-beautify winum xref-js2 yaml-mode zenburn-theme))
 
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

