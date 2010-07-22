(add-to-list 'load-path "~/.emacs.d/vendor")

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
(vendor 'sqlplus)
(vendor 'haml-mode)

(load "config/theme")
;;(load "config/jabber")
(load "config/org")
;;(load "config/twitter")
(load "config/javascript")
(load "config/sqlplus")

;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/snippets")
