(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'cl)

; custom place to save customizations
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(when (file-exists-p "~/.emacs.d/.passwords") (load "~/.emacs.d/.passwords"))

(load "config/global")
(load "config/functions")
(load "config/modes")
;;(load "config/git")

;;(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
;;(vendor 'twittering-mode)
(vendor 'textile-mode)
;;(vendor 'textmate)
(vendor 'color-theme)
(vendor 'vivid-chalk) 
;;(vendor 'jabber)
;;(vendor 'yasnippet)
(vendor 'ruby-hacks)
(vendor 'rhtml-mode)
;;(textmate-mode)
; Temporarily disable sqlplus because is breaks --daemon
;;(vendor 'sqlplus)
(vendor 'haml-mode)
(vendor 'sass-mode)
(vendor 'yaml-mode)
(vendor 'erlang)

(load "config/theme")
;;(load "config/jabber")
(load "config/org")
;;(load "config/twitter")
(load "config/javascript")
(load "config/sqlplus")

;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/snippets")

;; Marmalade package repo
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; clojure-mode and paredit
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))
(unless (package-installed-p 'paredit)
  (package-refresh-contents)
  (package-install 'paredit))
(add-hook 'clojure-mode-hook 'paredit-mode)
