;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq confirm-kill-emacs 'y-or-n-p)
(setq visible-bell t)
(prefer-coding-system 'utf-8)
(setq vc-handled-backends (quote (SVN)))
(cua-mode 0)
(transient-mark-mode 1)
(setq gist-view-gist t)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
;; do not make backup files
(setq make-backup-files nil)

(display-time)

(setq ido-case-fold  t)
(setq ido-enable-flex-matching t)
;;ignore some buffers
(setq  ido-ignore-buffers  '("\\` " "^\*Mess" "^\*Back" "^\*Completions" "^\*Ido" "*fsm-debug" "*twittering-http"))


;; works in both aquamacs and carbon
(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (functionp 'scroll-bar-mode)
  (scroll-bar-mode nil))

;; enable ido mode
(ido-mode)

;; enable column-number mode
(column-number-mode)

;; enable delete-selection mode
(delete-selection-mode)

;; PATH hack to make Emacs respect .bashrc - from jcrossley
;; Setup PATH
(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
;; Update exec-path with the contents of $PATH
(loop for path in (split-string (getenv "PATH") ":") do
      (add-to-list 'exec-path path))
