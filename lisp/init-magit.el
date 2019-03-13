					; magit

(require-package 'magit)
(if (system-is-windows)
    (setq magit-git-executable "C:/Program Files/Git/bin/git.exe"))
(require-package 'evil-magit) ;; evil-mode key bindings
(evil-magit-init)

(provide 'init-magit)
