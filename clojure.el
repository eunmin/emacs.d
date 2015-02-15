;; cider
(setq cider-auto-select-error-buffer nil)
(setq cider-prompt-save-file-on-load nil)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

