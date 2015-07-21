;; cask
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; tabbar
(load-file "~/.emacs.d/tabbar.el")

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
(setq ido-use-virtual-buffers t)

;; enable paredit-mode for lisp
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)

;; projectile
(projectile-global-mode)

;; highlight-parentheses-mode color
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(android-mode-builder (quote gradle))
 '(android-mode-sdk-dir "~/Library/Android/sdk")
 '(hl-paren-colors (quote ("color-196" "color-220" "color-201" "color-46"))))

;; rainbow-delimiters for lisp
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'highlight-parentheses-mode)

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

;; imenu-anywhere		 
(global-set-key (kbd "C-c o") 'imenu-anywhere)

;; android
(load-file "~/.emacs.d/android.el")

(setq make-backup-files nil)

(turn-on-pbcopy)

(set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?│))

(custom-set-faces
 '(vertical-border ((t (:foreground "brightblack")))))

(recentf-mode t)

;; javascript indent
(setq js-indent-level 2)
