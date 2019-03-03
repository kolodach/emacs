					; Keybindings
(defun insert-line-below ()
  "Insert an empty line below the current line."
  (interactive)
  (end-of-line)
  (newline-and-indent))

(defun insert-line-above ()
  "Insert an empty line above the current line."
  (interactive)
  (previous-line)
  (insert-line-below))

(global-set-key [(control tab)] 'other-window)
(global-set-key [(meta p)] 'previous-buffer)
(global-set-key [(meta n)] 'next-buffer)
(global-set-key [(control return)] 'insert-line-below)
(global-set-key [(control meta return)] 'insert-line-above)
(global-set-key [(f9)] 'eval-buffer)
(global-set-key [(shift return)] 'ace-jump-mode)

(provide 'init-keybindings)
