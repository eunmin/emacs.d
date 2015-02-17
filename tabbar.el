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

(tabbar-mode 1)
