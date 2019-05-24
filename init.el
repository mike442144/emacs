;; init.el


(add-to-list
 'load-path
 (expand-file-name "lisp" user-emacs-directory))

(load-theme 'tango-dark)

(require 'init-js)
(require 'init-elpa)
(require 'init-markdown)
(require 'init-web-beautify)

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
   (quote
	(web-beautify markdown-mode js2-mode yaml-mode org mocha json-mode haskell-mode flycheck)))
 '(safe-local-variable-values
   (quote
	((mocha-reporter . "spec")
	 (mocha-project-test-directory . "tests")
	 (mocha-options . "--recursive --reporter dot -t 5000")
	 (mocha-environment-variables . "NODE_ENV=test")
	 (mocha-which-node . "/usr/local/bin/node"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "ex16.bdachina.com")
 '(smtpmail-smtp-service 25)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; (add-hook 'after-init-hook #'global-flycheck-mode)
