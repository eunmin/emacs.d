;; cask
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; hide menu bar
(menu-bar-mode -1)

;; smex
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; clojure-mode
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

;; projectile
(projectile-global-mode)

;; rainbow-delimiters
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; flx-ido (단축키로 ido 검색이 가능 pj 해도 project가 나옴)
(flx-ido-mode 1)

;; zenburn theme
(load-theme 'zenburn t)

;; idle-highlight-mode
(idle-highlight-mode 1)

;(setq linum-format "%4d \u2502 ")
