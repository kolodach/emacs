					; Keybindings
(global-set-key [(control tab)] 'other-window)
(global-set-key [(meta p)] 'previous-buffer)
(global-set-key [(meta n)] 'next-buffer)
(global-set-key [(f9)] 'eval-buffer)
(global-set-key [(shift return)] 'ace-jump-mode)
(global-set-key [(shift control right)] 'shrink-window-horizontally)
(global-set-key [(shift control left)] 'enlarge-window-horizontally)
(global-set-key [(shift control up)] 'enlarge-window)
(global-set-key [(shift control down)] 'shrink-window)

(provide 'init-keybindings)
