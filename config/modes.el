;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(load "~/.emacs.d/config/dired")
(load "~/.emacs.d/config/shell")
(load "~/.emacs.d/config/javascript")
; bash
(setq auto-mode-alist (cons '("\\.bashrc" . sh-mode) auto-mode-alist))

; magit
(setq magit-commit-all-when-nothing-staged t)

; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

; erlang-mode
(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
