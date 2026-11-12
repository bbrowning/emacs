;;; -*- lexical-binding: nil -*-
;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
;; The color-theme library and twilight theme are vendored third-party
;; code (twilight lives in a git submodule), so inhibit Emacs 31+'s
;; missing `lexical-binding' cookie advisory while loading them.  See
;; `vendor' in functions.el.
(let ((warning-inhibit-types '((files missing-lexbind-cookie))))
  (require 'color-theme)
  (when (fboundp 'color-theme-initialize)
    (color-theme-initialize))
  (load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el"))
(setq color-theme-is-global t)
(vivid-chalk)
