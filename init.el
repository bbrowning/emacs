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
