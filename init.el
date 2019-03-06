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
