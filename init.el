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
(require 'init-neotree)
(require 'init-flycheck)
(require 'init-markdown)
(require 'init-linum-mode)
(require 'init-web-beautify)
(require 'init-numbering-window)
(require 'init-rjsx-mode)


;;; (require 'color-theme-sanityinc-tomorrow)
(load-theme 'zenburn t)


;; (eval-after-load "org" '(require 'ox-md nil t))


(setq user-mail-address "jinglei.chen@bda.com")
(setq mail-signature t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-splash-image "/home/bda/图片/logo.png")
 '(indent-tabs-mode t)
 '(package-selected-packages
   '(rjsx-mode ag xref-js2 js2-refactor zenburn-theme color-theme-sanityinc-tomorrow solarized-theme js-comint meghanada helm pug-mode all-the-icons neotree git-gutter magit window-numbering smex company web-beautify markdown-mode js2-mode yaml-mode org mocha json-mode haskell-mode flycheck))
 '(safe-local-variable-values
   '((mocha-reporter . "spec")
	 (mocha-project-test-directory . "tests")
	 (mocha-options . "--recursive --reporter dot -t 5000")
	 (mocha-environment-variables . "NODE_ENV=test")
	 (mocha-which-node . "/usr/local/bin/node")))
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-smtp-server "ex16.bdachina.com")
 '(smtpmail-smtp-service 25)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

