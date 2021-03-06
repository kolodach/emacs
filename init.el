					; init.el

(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-bootstrap)
(require 'init-utils)
(require 'init-shell)
(require 'init-html)
(require 'init-keybindings)
(require 'init-yasnippet)
(require 'init-autocomplete)
(require 'init-theme)
(require 'init-ace-jump)
(require 'init-evil)
(require 'init-org)

(require 'init-dired)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (neotree evil-magit magit dired-sidebar md4rd evil ace-jump-mode yasnippet auto-complete yasnippet-snippets))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 93 :family "Hack")))))


(require 'init-magit)

(require 'init-neotree)
