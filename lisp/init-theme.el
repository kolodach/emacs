					; theme

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (yasnippet auto-complete yasnippet-snippets))))

;; Windows specific customizations
(if (system-is-windows)(setq visible-bell 1))

(custom-set-faces
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 93 :family "Hack"))))
 )

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-linum-mode t)

(provide 'init-theme)
