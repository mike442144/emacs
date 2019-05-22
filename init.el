(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; (add-to-list 'load-path "~/somewhere")

(load-theme 'tango-dark)
(require 'web-beautify)

(autoload 'markdown-mode "markdown-mode"
	"Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'". markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'". markdown-mode))
(eval-after-load "org" '(require 'ox-md nil t))

;; if you're using 'js-mode' (a.k.a 'javascript-mode')
;;(eval-after-load 'js
;;  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

;;(eval-after-load 'json-mode
;;  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(setq user-mail-address "jinglei.chen@bda.com")
(setq mail-signature t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-splash-image "/home/bda/图片/logo.png")
 '(indent-tabs-mode t)
 '(safe-local-variable-values (quote ((mocha-reporter . "spec") (mocha-project-test-directory . "tests") (mocha-options . "--recursive --reporter dot -t 5000") (mocha-environment-variables . "NODE_ENV=test") (mocha-which-node . "/usr/local/bin/node"))))
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

(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; mocha

