(use-package doom-snippets
  :load-path "/home/davids/.emacs.d/snippets"
  :after yasnippet)

(use-package yasnippet
  :ensure t
  :config
  (setq yas-triggers-in-field t)  ;; Allow triggers in fields
  (setq yas-wrap-around-region t) ;; Allow wrapping around region when expanding snippets
  (yas-global-mode 1))

;; simple eglot configuration. should prob
;; move languages to their own block
(use-package eglot
  :after yasnippet
  :ensure t
  :hook ((python-mode . eglot-ensure)
		 (go-ts-mode . eglot-ensure)
		 (yaml-ts-mode . eglot-ensure)
		 (before-save . eglot-format-buffer)
         ;; Hook to ignore jsonrpc--log-event
         (eglot-managed-mode . (lambda () (fset #'jsonrpc--log-event #'ignore)))
         ;; Set eglot events buffer size on eglot-managed-mode hook
         (eglot-managed-mode . (lambda () (setq eglot-events-buffer-size 1))))
  :config
  (setq eglot-events-buffer-size 0)
  (setq eglot-auto-display-help-buffer nil)
  (setq eglot-report-progress nil)
  (add-to-list 'eglot-server-programs '(elixir-ts-mode "language_server.sh")))

(use-package
 elixir-ts-mode
 :hook (elixir-ts-mode . eglot-ensure)
 (elixir-ts-mode
  .
  (lambda ()
    (push '(">=" . ?\u2265) prettify-symbols-alist)
    (push '("<=" . ?\u2264) prettify-symbols-alist)
    (push '("!=" . ?\u2260) prettify-symbols-alist)
    (push '("==" . ?\u2A75) prettify-symbols-alist)
    (push '("=~" . ?\u2245) prettify-symbols-alist)
    (push '("<-" . ?\u2190) prettify-symbols-alist)
    (push '("->" . ?\u2192) prettify-symbols-alist)
    (push '("<-" . ?\u2190) prettify-symbols-alist)
    (push '("|>" . ?\u25B7) prettify-symbols-alist)))
 (before-save . eglot-format))

(use-package eldoc
  :after eglot
  :ensure nil
  :custom
  (eldoc-echo-area-use-multiline-p 0)
  :config
  (global-eldoc-mode 0))

(use-package go-ts-mode
  :after eglot
  :mode "\\.go\\'"
  :config
  (setq go-ts-mode-indent-offset 4))

(use-package treesit-auto
  :after eglot
  :config
  (global-treesit-auto-mode))

(use-package hl-todo
  :config
  (global-hl-todo-mode)
  )

(use-package slime
  :config
(setq inferior-lisp-program "sbcl")
(setq slime-complete-symbol*-fancy t))

(use-package corfu
  :after eglot
  :custom
  (corfu-cycle t)           ;; Enable cycling for `corfu-next/previous'
  (corfu-preselect 'prompt) ;; Always preselect the prompt

  ;; Use tab for cycling :D
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous))

  :init
  (global-corfu-mode))

(use-package emacs
  :custom
  ;; TAB cycle if there are only few candidates
  ;; (completion-cycle-threshold 3)

  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (tab-always-indent 'complete)
)

(provide 'programming)
