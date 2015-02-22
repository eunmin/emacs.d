;; clojure-mode
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

;; cider
(setq cider-auto-select-error-buffer nil)
(setq cider-prompt-save-file-on-load nil)

;; ac-cider
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))

;; slamhound
;; add code to ~/.lein/profiles.clj
;; :dependencies [[slamhound "1.5.5"]]
;; :aliases {"slamhound" ["run" "-m" "slam.hound"]}
(load-file "~/.emacs.d/slamhound.el")
(global-set-key (kbd "C-c O") 'slamhound)

;; rainbow-delimiters
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'highlight-parentheses-mode)
