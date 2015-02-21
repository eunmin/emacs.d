(require 'tabbar)

(set-face-attribute
 'tabbar-default nil
 :background "#6F6F6F"
 :foreground "#4F4F4F"
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "#6F6F6F"
 :foreground "#4F4F4F"
 :box '(:line-width 5 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "#3F3F3F"
 :foreground "#DCDCCC"
 :box '(:line-width 5 :color "gray75" :style nil))

;; adding spaces
(defun tabbar-buffer-tab-label (tab)
    (let ((label  (if tabbar--buffer-show-groups
		      (format "[%s]  " (tabbar-tab-tabset tab))
		    (format "%s  " (tabbar-tab-value tab)))))
      (if tabbar-auto-scroll-flag
	  label
	(tabbar-shorten
	 label (max 1 (/ (window-width)
			 (length (tabbar-view
				  (tabbar-current-tabset)))))))))

(global-set-key (kbd "M-[") 'tabbar-backward-tab)
(global-set-key (kbd "M-]") 'tabbar-forward-tab)

;; switch tabbar
(defun switch-tabbar (num)
  (let* ((tabs (tabbar-tabs
		(tabbar-current-tabset)
		;; (tabbar-get-tabset "All Buffers")
		))
	 (tab (nth
	       (if (> num 0) (- num 1) (+ (length tabs) num))
	       tabs)))
    (if tab (switch-to-buffer (car tab)))))

(global-set-key (kbd "M-1") (lambda () (interactive) (switch-tabbar 1)))
(global-set-key (kbd "M-2") (lambda () (interactive) (switch-tabbar 2)))
(global-set-key (kbd "M-3") (lambda () (interactive) (switch-tabbar 3)))
(global-set-key (kbd "M-4") (lambda () (interactive) (switch-tabbar 4)))
(global-set-key (kbd "M-5") (lambda () (interactive) (switch-tabbar 5)))
(global-set-key (kbd "M-6") (lambda () (interactive) (switch-tabbar 6)))
(global-set-key (kbd "M-7") (lambda () (interactive) (switch-tabbar 7)))
(global-set-key (kbd "M-8") (lambda () (interactive) (switch-tabbar 8)))
(global-set-key (kbd "M-9") (lambda () (interactive) (switch-tabbar 9)))

(tabbar-mode 1)
