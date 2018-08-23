;;; axis-init --- Early init for work environment
;;; Commentary:
;;; Settings that need to be in place for the rest to work (network proxy)


;;; Code:
(setq-default url-proxy-services
       '(("no_proxy" . "^\\(localhost\\|192.*\\)")
         ("http" . "proxycluster.se.axis.com:3128")
         ("https" . "proxycluster.se.axis.com:3128")))

(provide 'axis-init)
;;; axis-init.el ends here
