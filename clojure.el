;; clojure-mode
(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(setq clojure-defun-style-default-indent t)
;; cider
(setq cider-auto-select-error-buffer nil)
(setq cider-prompt-save-file-on-load nil)
(add-hook 'cider-mode-hook #'eldoc-mode)

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

(eval-after-load 'flycheck '(flycheck-clojure-setup))
(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
    '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))


(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-v"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

;; Local Variables:
;; flycheck-disabled-checkers: (clojure-cider-kibit)
;; End:
