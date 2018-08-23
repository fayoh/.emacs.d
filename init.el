;;; init --- User init
;;; Commentary:
;;; Code:
;;;TODO: minimize terminalmacs
;;  (cond ((display-graphic-p)
;;           ;; Graphical code goes here.
;;           )
;;          (t
;;           ;; Console-specific code
;;           ))

;; MELPA repositories
(require 'package)

(add-to-list 'package-archives
             '("MELPA" . "http://melpa.org/packages/") t)
(package-initialize)

;;; Local functions
(add-to-list 'load-path "~/.emacs.d/elisp/")
(load "my-functions")

;;; Visuals
(show-paren-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(global-font-lock-mode t)
(set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-10")
(set-face-attribute 'mode-line-inactive nil :font "DejaVu Sans Mono-10")

;; Start up directly
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)



;; Locale and environment
(setq user-mail-address "daniel.f.bengtsson@gmail.com")
(set-language-environment "Latin-1")
(setq european-calendar-style 't              ; European style calendar
      calendar-week-start-day 1               ; Week starts monday
      ps-paper-type 'a4                       ; Specify printing format
      ispell-dictionary "english")            ; Set ispell dictionary

(setq grep-command "grep -i -nH -e ")


;; Behaviour
(fset 'yes-or-no-p 'y-or-n-p)
(electric-pair-mode 1)
(setq display-buffer-reuse-frames t
      make-backup-files nil
      read-file-name-completion-ignore-case t
      mouse-yank-at-point t
      compilation-read-command nil
      indent-tabs-mode nil
      show-paren-when-point-inside-paren t)

;;; Tangentbordsbindingar
(global-set-key (kbd "M-<") 'hippie-expand)
(global-set-key [f4] 'menu-bar-mode)
(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-n") 'next-error)
(global-set-key (kbd "C-p") 'previous-error)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-c t") 'balle-grep-todos-in-dir)

;; Move custom configuration variables set by Emacs, to a seperate file
(require 'custom)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)



;; Package configs
(require 'use-package)
;;; General configs
(require 'general-config)
;;; Configs only required at homde
;;; (require 'home-config)

;;; Cheat sheet
(load "my-cheatsheet" noerror)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
