;;; general-config --- Summary
;;; Commentary:
;;; use-package configurations for packages I always want to load


;;; Code:

;;; Writing
;;;---------------------------------------------------------
(use-package dictcc
  :ensure t
  :bind (("s-t" . dictcc))
  :config (setq dictcc-source-lang "en"
                dictcc-destination-lang "sv"))
(use-package flyspell
  :ensure t
  :hook ((text-mode . flyspell-mode)
         (prog-mode . flyspell-prog-mode))
  :config (setq flyspell-issue-message-flag nil)
  :diminish flyspell-mode
  :delight)

(use-package flyspell-popup
  :ensure t
  :hook (flyspell-mode . flyspell-popup-auto-correct-mode)
  :after flyspell
  :bind (("C-:" . flyspell-popup-correct)))
;;;---------------------------------------------------------


;;; Emacs behaviour
;;;---------------------------------------------------------
(use-package ido
  :init (ido-mode t)
  (setq ido-enable-flex-matching t
        ido-everywhere t
        ido-create-new-buffer 'always
        ido-default-file-method 'selected-window
        ido-default-buffer-method 'selected-window))

(use-package move-text
  :ensure t
  :config
  (move-text-default-bindings))

(use-package smex
  :ensure t
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command))
  :config (setq smex-history-length 20))

(use-package diminish
  :ensure t)
;;;---------------------------------------------------------

;;; Code editing modes and helper functions
;;;---------------------------------------------------------
;;;;; Major modes
;;;;; ------------------------------------------------------
(use-package json-mode
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode)
  :config (setq highlight-indent-guides-method 'character
                highlight-indent-guides-responsive 'top))

(use-package markdown-mode
  :ensure t
  :mode "\\.markdown\\'" "\\.md\\'")
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(use-package graphviz-dot-mode
  :ensure t
  :config (setq graphviz-dot-view-command "eog"
                graphviz-dot-view-edit-command t
                graphviz-dot-save-before-view t))
;;;;; ------------------------------------------------------

(use-package ggtags
  :ensure t
  :config (setq ggtags-mode-line-project-name nil)
  :hook (prog-mode . ggtags-mode))

(use-package highlight-indent-guides
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode )
  :config (setq highlight-indent-guides-method 'character
                highlight-indent-guides-responsive 'top))

(use-package whitespace
  :ensure t
  :bind (("C-c T w" . whitespace-mode))
  :hook ((prog-mode . whitespace-mode)
         (text-mode . whitespace-mode)
         (conf-mode . whitespace-mode))
  :config (setq whitespace-line-column nil)
  (setq whitespace-style '(face indentation::space tabs trailing))
  :diminish whitespace-mode
  :delight)

(use-package yasnippet
  :ensure t
  :init (yas-global-mode 1)
  :diminish yas-minor-mode)

(use-package yasnippet-snippets
  :ensure t)

(use-package change-inner
  :ensure t
  :bind (("M-i" . change-inner)
         ("M-o" . change-outer)))

;;;;; Flycheck linters
;;;;; ------------------------------------------------------
(use-package flycheck
  :ensure t
  :config
  :init (global-flycheck-mode))

(use-package flycheck-demjsonlint
  :ensure t)

(use-package flycheck-checkbashisms
  :ensure t
  :config
  (flycheck-checkbashisms-setup))

(use-package flycheck-popup-tip
  :ensure t
  :after flycheck
  :hook  (flycheck-mode . flycheck-popup-tip-mode))

(flycheck-define-checker proselint
  "A linter for prose."
  :command ("proselint" source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": "
	    (id (one-or-more (not (any " "))))
	    (message) line-end))
  :modes (text-mode markdown-mode gfm-mode))

(add-to-list 'flycheck-checkers 'proselint)
;;;;; ------------------------------------------------------

;;;;; Company code completion and backends
;;;;; ------------------------------------------------------
(use-package company
  :ensure t
  :init (global-company-mode)
  :diminish)

(use-package company-jedi
  :ensure t
  :after company
  :init (add-to-list 'company-backends 'company-jedi))

(use-package company-c-headers
  :ensure t
  :after company
  :init (add-to-list 'company-backends 'company-c-headers))

(use-package company-shell
  :ensure t
  :after company
  :init (add-to-list 'company-backends 'company-shell))

(use-package company-quickhelp
  :ensure t
  :after company
  :init (company-quickhelp-mode))
;;;;; ------------------------------------------------------
;;;---------------------------------------------------------

;;; Visuals
;;;---------------------------------------------------------
(use-package ample-zen-theme
  :ensure t)
(use-package mode-icons
  :ensure t
  :after flycheck
  :init (progn
          (mode-icons-mode)
          (add-hook 'flycheck-after-syntax-check-hook 'mode-icons-reset)))
;;;---------------------------------------------------------

;;; Productivity
;;;---------------------------------------------------------
(use-package todotxt
  :ensure t
  :bind (("C-x t" . todotxt))
  :config (setq todotxt-file "~/.todo/todo.txt"))

(use-package cheatsheet
  :ensure t
  :bind ("s-c" . cheatsheet-show))
;;;---------------------------------------------------------

(provide 'general-config)
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
;;; general-config.el ends here
