(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'cl)

; custom place to save customizations
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(when (file-exists-p "~/.emacs.d/.passwords") (load "~/.emacs.d/.passwords"))

(load "~/.emacs.d/config/global")
(load "~/.emacs.d/config/functions")
(load "~/.emacs.d/config/modes")
;;(load "~/.emacs.d/config/git")

;;(vendor 'cheat)
(vendor 'gist)
;;(vendor 'twittering-mode)
(vendor 'textile-mode)
;;(vendor 'textmate)
(vendor 'color-theme)
(vendor 'vivid-chalk) 
;;(vendor 'jabber)
;;(vendor 'yasnippet)
;;(textmate-mode)
; Temporarily disable sqlplus because is breaks --daemon
;;(vendor 'sqlplus)
(vendor 'yaml-mode)
;(vendor 'erlang)
(vendor 'rust-mode)

(load "~/.emacs.d/config/theme")
;;(load "~/.emacs.d/config/jabber")
(load "~/.emacs.d/config/org")
;;(load "~/.emacs.d/config/twitter")
(load "~/.emacs.d/config/javascript")
(load "~/.emacs.d/config/sqlplus")
(load "~/.emacs.d/config/rust")

;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/snippets")

;; Marmalade package repo
(require 'package)
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; magit
(unless (package-installed-p 'magit)
  (package-refresh-contents)
  (package-install 'magit))


;; clojure-mode and paredit
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))
(unless (package-installed-p 'paredit)
  (package-refresh-contents)
  (package-install 'paredit))
(add-hook 'clojure-mode-hook 'paredit-mode)


;; go-mode
(unless (package-installed-p 'go-mode)
  (package-refresh-contents)
  (package-install 'go-mode))
;; (unless (package-installed-p 'go-autocomplete)
;;   (package-refresh-contents)
;;   (package-install 'go-autocomplete))
(load "~/.emacs.d/config/golang")

;; flycheck
(unless (package-installed-p 'flycheck)
  (package-refresh-contents)
  (package-install 'flycheck))
(global-flycheck-mode)

;; workaround for outdated go support in flycheck
;; remove once https://github.com/flycheck/flycheck/pull/1525 released to stable
(let ((govet (flycheck-checker-get 'go-vet 'command)))
  (when (equal (cadr govet) "tool")
    (setf (cdr govet) (cddr govet))))

;; markdown-mode
(unless (package-installed-p 'markdown-mode)
  (package-refresh-contents)
  (package-install 'markdown-mode))
(setq markdown-command "marked")


;; csharp-mode
(unless (package-installed-p 'csharp-mode)
  (package-refresh-contents)
  (package-install 'csharp-mode))


;; ugh electric indents
;(electric-indent-mode -1) ; globally
;; or
(add-hook 'org-mode-hook (electric-indent-local-mode -1))
