;; cider
(setq cider-auto-select-error-buffer nil)
(setq cider-prompt-save-file-on-load nil)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; clj-refactor
(add-hook 'clojure-mode-hook (lambda ()
			       (clj-refactor-mode 1)
			       (cljr-add-keybindings-with-prefix "C-c C-m")))
