; run gofmt before saving
(defun go-mode-setup ()
  (add-hook 'before-save-hook 'gofmt-before-save))
(add-hook 'go-mode-hook 'go-mode-setup)
