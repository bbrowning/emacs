;;; -*- lexical-binding: nil -*-
;;; Create some handy oracle functions (courtesy @jcrossley)
(defmacro def-oracle (name connect-string)
  (let* ((buf-name (concat "oracle-" (symbol-name name)))
         (fun-name (intern buf-name)))
    `(defun ,fun-name () 
       (interactive)
       (sqlplus ,connect-string ,buf-name))))

;; Per-machine and gitignored, so no shared cookie is possible; inhibit
;; Emacs 31+'s missing `lexical-binding' cookie advisory while loading it.
(let ((warning-inhibit-types '((files missing-lexbind-cookie))))
  (when (file-exists-p "~/.emacs.d/.oracle_connections") (load "~/.emacs.d/.oracle_connections")))
(setq sqlplus-history-dir "~/.sqlplus-history")
