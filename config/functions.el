;;; -*- lexical-binding: nil -*-
;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
; for loading libraries in from the vendor directory
(defun vendor (library)
  ;; Emacs 31+ warns when loading a file that has no `lexical-binding'
  ;; cookie.  Vendored libraries are third-party code (some are git
  ;; submodules), so rather than annotating them, inhibit just that
  ;; advisory while loading them.  They keep the default dynamic
  ;; binding, so their behavior is unchanged.
  (let ((warning-inhibit-types '((files missing-lexbind-cookie))))
    (let* ((file (symbol-name library))
           (normal (concat "~/.emacs.d/vendor/" file))
           (suffix (concat normal ".el"))
           (config (concat "~/.emacs.d/config/" file)))
      (cond
       ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
       ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
       ((file-exists-p suffix) (require library))))))