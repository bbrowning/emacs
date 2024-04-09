; run gofmt before saving
(defun go-mode-setup ()
  ; Use goimports instead of go-fmt
  ; go get golang.org/x/tools/cmd/goimports
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq tab-width 4
        standard-indent 4
        indent-tabs-mode nil)
  ; golint
  (add-to-list 'load-path (concat (getenv "GOPATH") "/src/golang.org/x/lint/misc/emacs"))
  (require 'golint)
)
(add-hook 'go-mode-hook 'go-mode-setup)

;; (require 'auto-complete)
;; (require 'go-autocomplete)
;; (require 'auto-complete-config)
;; (ac-config-default)
