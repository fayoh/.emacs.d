;;; axis-config --- Summary
;;; Commentary:
;;; Startup only needed for axis environment

;;; Code:
(setq user-mail-address "danielfb@axis.com")

;; bb-mode for bitbake recipes
(use-package bb-mode
  :mode "\\.bb$" "\\.bbappend$" "\\.bbclass$")

(defun get-oe-module-name (dir)
  "Parse DIR and return module if available otherwise nil.
Opportunistically assume that if top dir is checktests, the
   next level will have the module name"
  "TODO: This will still fail miserably on a module with subdirs ..."
  (let ((dirs (cdr (reverse (split-string dir "/")))))
    (if (equal (car dirs) "checktests")
        (car (cdr dirs))
      (car dirs))))

;; If BUILDDIR is set we assume that we are compiling an OE package
;; that has been checked out via devtool
;; and will use myffbuild to correctly build
;; NOTE: Needs to have an emacs run from a shell where oe-initenv has been
;; run for the correct tree
(setq build-tree (getenv "BUILDDIR"))
(require 'compile)
(if (bound-and-true-p build-tree)
    (add-hook 'c-mode-hook
              (lambda ()
                (set (make-local-variable 'compile-command)
                     (concat "myffbuild "
                             (get-oe-module-name (file-name-directory
                                                  buffer-file-name)))))))

;; Set title to reflect what build tree we can compile in this instance
;; TODO: Sort out only dist and build dirs (sunshade:q6000-e)
(if build-tree
    (let* ((dirs (reverse (split-string build-tree "/")))
           (unit (car dirs))
           (dist (car (cdr (cdr dirs)))))
      (setq frame-title-format (list "%b @ " dist ":" unit))))

(provide 'axis-config)
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
;;; axis-config.el ends here
