;; cask
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; hide menu bar
(menu-bar-mode -1)

;; smex
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ido
(setq ido-everywhere t)
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
(defun ido-define-keys ()
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

;; clojure-mode
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

;; projectile
(projectile-global-mode)

;; rainbow-delimiters
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; flx-ido (단축키로 ido 검색이 가능 pj 해도 project가 나옴)
(flx-ido-mode 1)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; idle-highlight-mode
(idle-highlight-mode 1)

;; show line number
(global-linum-mode 1)
(setq linum-format "%3d ")

;; auto reload file
(global-auto-revert-mode 1)

;; scrolling
(setq scroll-step 1 scroll-conservatively 10000)
(global-set-key [up] (lambda () (interactive) (scroll-down 1)))
(global-set-key [down] (lambda () (interactive) (scroll-up 1)))
(global-set-key [left] (lambda () (interactive) (scroll-right tab-width t)))
(global-set-key [right] (lambda () (interactive) (scroll-left tab-width t)))

;; don't display 'ls does not support --dired' error message
(setq dired-use-ls-dired nil)

;; auto-complete
(global-auto-complete-mode 1)
(define-key ac-mode-map (kbd "M-SPC") 'auto-complete)

;; clojure
(load-file "~/.emacs.d/clojure.el")

;; java
(load-file "~/.emacs.d/java.el")

;; tabbar
(load-file "~/.emacs.d/tabbar.el")

;; imenu-anywhere		 
(global-set-key (kbd "C-c o") 'imenu-anywhere)
