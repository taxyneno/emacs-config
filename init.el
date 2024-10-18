(add-to-list 'load-path (expand-file-name "config" "~/.emacs.d"))


(defun move-cursor-to-top-scratch-buffer ()
  "Move point to the beginning of the scratch buffer."
  (when (get-buffer "*scratch*")
    (with-current-buffer "*scratch*"
      (goto-char (point-min)))))

(defun coon ()
  (interactive)
  (find-file user-emacs-directory))

(setq coon-ascii "			Time to do cool things!

⣿⣿⣿⣿⣿⣿⣿⠿⠿⠻⠟⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡏⣸⢿⣿⣦⣄⢀⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⢱⡏⠘⣿⣿⣿⣾⣷⣤⡀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⢙⣉⣠⣬⣥⣄⢻⣿
⣿⣿⣿⣿⣿⣿⠘⣿⠎⠿⠏⠘⣿⡿⣿⠧⠀⠀⠙⠉⠻⠟⢿⣿⣿⠿⠿⠛⠋⠻⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⣀⣰⣾⣿⠿⠟⠉⠀⢉⠀⣿
⣿⣿⣿⣿⣿⣿⠆⠹⣧⠀⠀⠀⠸⡇⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⢿⠿⠛⠟⠛⢁⣴⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⢿
⣿⣿⣿⣿⣿⣿⣧⡀⢻⡃⠀⠀⠀⠀⠀⢠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⠁⢁⣦⠴⠖⠂⠀⠀⠀⠀⡴⢃⣾
⣿⣿⣿⣿⣿⣿⣿⣷⡄⠻⣇⡀⠀⠀⣀⣈⣿⣷⣿⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⣸⢃⣾⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡁⠐⢿⣿⡃⢀⣿⣿⣿⡃⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢀⠀⠀⠀⣀⠀⠐⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⢃⣾⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢰⣟⠙⣾⣿⣿⣿⣿⣿⣠⣤⣤⠀⠀⠀⠀⠀⣀⣾⣿⣾⡀⣦⣾⣿⣤⣆⠀⠰⠁⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⠆⣾⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠧⠘⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⢀⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⡆⠀⣀⡀⠀⠀⠀⠀⠀⣴⡿⢛⣤⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢐⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⡇⠀⠀⠀⣤⣶⣿⠏⣈⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⣿⣿⣿⣿⣿⡿⠀⢸⣿⣿⡄⠀⠀⣾⣿⣿⡟⠁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣠⡀⠀⠻⢿⡇⠀⢿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣿⣿⣿⡏⠀⠀⢤⠀⠀⢻⡟⢅⣀⢲⣾⡿⠛⠀⠀⠀⣀⠈⠑⠶⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⣿⣿⣷⠘⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡁⣶⣼⣿⠋⠀⠠⣄⠀⠀⠀⢸⡇⠀⠉⣿⡿⠁⠀⠀⠠⣀⠈⠁⠀⠀⠀⠀⠙⠛⠛⢛⣿⣿⣿⣿⣿⣾⣿⣿⣿⠃⣨⣿⣿⣿⣿
⣿⣿⣯⡻⢿⣿⣿⣿⡧⢿⣿⡉⠁⠀⠀⠀⠀⢀⣴⣾⣷⣄⣶⣿⣥⣄⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠈⠓⠛⠉⠙⢿⠁⠉⠸⣿⣿⣷⡶⠈⣿⣿⣿⣿
⣿⣿⣿⣿⣷⣬⣉⡙⢂⣻⠷⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢬⣦⠀⢠⣿⣿⣿⣷⣤⠈⠉⢻⣿
⣿⣿⣿⣿⣿⣿⣿⡿⠓⣹⡟⠲⠤⣄⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⠿⢿⣿⣿⣷⣤⡀⠙⢿
⣯⣭⣭⣉⣉⣉⡙⠓⠠⠚⠿⢶⣤⣄⣉⡾⠛⠁⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠠⢤⣀⣒⣒⣒⣒⣒⣀⣀⣀⡀⠀⠠⣼⣿⣿⣿⣆⠠⣬
⣿⠿⠟⣛⣛⡛⠛⠁⠛⢻⠶⠶⠦⠬⢽⠀⠀⠒⠆⠀⠀⠀⠀⢏⠽⠿⡿⣿⣄⠀⣤⣄⣠⣞⠉⠁⠀⠀⠀⠀⠀⠀⠀⢩⣭⣭⣭⣤⣈⡛⢿⡏⠋⠀⢹
⣿⣿⣿⡿⠟⢋⣁⣠⣄⠠⢶⣶⣶⣶⡾⡀⠀⠀⠀⠀⠀⠀⢀⠎⠀⠒⢳⣛⣿⣿⣯⠉⠳⢄⠉⠒⢄⡀⠀⠀⠀⠀⠀⠐⠚⠛⠙⣿⣟⠋⠉⠉⠀⢠⡀
⡿⣫⣵⣶⣿⣿⣿⣿⡇⠐⠛⣿⣿⣟⠃⠑⠠⠀⠀⠀⠄⠒⠁⠀⠀⠈⠉⠙⣉⠥⠁⠀⠀⠈⠣⠀⠀⠉⠢⡀⠀⠀⠀⠀⠈⠙⠻⠏⢻⣷⡀⠀⢀⠸⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣷⡞⡸⣿⣿⠟⠀⠀⠀⠐⠠⠤⠤⠤⠤⠤⠖⠒⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠄⠀⠘⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⣰⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠲⠀⠀⠀⠀⢻⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠁⢾⡷⠁⠀⢀⣤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣷⣦⣷⣾⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⢀⣤⣶⠂⠀⠈⠁⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣈⣳⣤⣶⣿⣾⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣆⣴⣿⡄⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣷⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿")


(setq initial-scratch-message coon-ascii)

(add-hook 'emacs-startup-hook 'move-cursor-to-top-scratch-buffer)



(require 'keybindings)
(require 'behavior)
(require 'visual)
(require 'packages)
(require 'programming)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" default))
 '(package-selected-packages
   '(corfu company-mode catppuccin-theme vundo all-the-icons hl-todo treesit-auto clang-format company-lsp doom-modeline vertico rainbow-delimiters which-key doom-themes treemacs compat markdown-mode magit cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
