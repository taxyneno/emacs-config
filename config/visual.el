;; top bars
(menu-bar-mode -1)
(tool-bar-mode -1)

;; side bars
(scroll-bar-mode -1)

;; cursor
(blink-cursor-mode 0)

;; parens
(show-paren-mode t)


;; line numbers & column number on modeline
(global-display-line-numbers-mode 1)
(column-number-mode t)

;; lines
(global-hl-line-mode t) 

;; default tab-width
(setq-default tab-width 4
			  standard-indent 4
			  indent-tabs-mode t)

;; font
(defun font-exists? (font-name)
  (find-font (font-spec :name font-name)))


(defun set-my-font ()
  (let ((font-name "Iosevka Nerd Font")
        (height 250))
    (when (font-exists? font-name)
      (set-face-attribute 'default nil :height height :font font-name))))

(set-my-font)


;; themes
(defun my-load-theme (theme)
  (interactive
   (list (intern (completing-read "Load theme: "
                                  (mapcar 'symbol-name
                                          (custom-available-themes))))))
  (mapcar #'disable-theme custom-enabled-themes)
  (load-theme theme t))

(add-hook 'after-init-hook (lambda () (load-theme 'doom-one)))

;; icons
(use-package all-the-icons)

;; tab bar
(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button nil)

(provide 'visual)

