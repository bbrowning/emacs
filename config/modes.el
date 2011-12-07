;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(load "config/dired")
(load "config/ruby")
(load "config/shell")
(load "config/javascript")
; bash
(setq auto-mode-alist (cons '("\\.bashrc" . sh-mode) auto-mode-alist))

; magit
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))
(setq magit-commit-all-when-nothing-staged t)

; sass-mode for .scss files
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; erlang-mode
(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
