					; Utils
(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			      '(2 "_NET_WM_STATE_FULLSCREEN" 0)))

;;; require-package --- On-demand installation of packages.

;;; Commentary:
;;;   Require a package from ELPA repositories.

;;; Code:
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (if (boundp 'package-selected-packages)
            ; Record this as a package the user installed explicitly:
            (package-install package nil)
          (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(provide 'require-package)
;;; require-package ends here

(defun add-config()
  "Creates lisp configuration file, located in ~/.emacs.d/lisp/ and adds it into ~/.emacs.d/ init.el. \n
  NAME - configuration name, also acts as a file name."
  (interactive)
  (setq name (read-from-minibuffer "Config name: "))
  (write-region (format "; %s\n\n(provide 'init-%s)" name name) nil (format "~/.emacs.d/lisp/init-%s.el" name))
  (cl-letf (((symbol-function 'yes-or-no-p) (lambda (_) t)))
    (kill-matching-buffers "init.el"))
  (write-region (format "\n(require 'init-%s)" name) nil "~/.emacs.d/init.el" 'append)
  (setq last-default-dir default-directory)
  (setq default-directory "~/")
  (find-file (format "~/.emacs.d/lisp/init-%s.el" name))
  (setq default-directory last-default-dir))

(defun open-config ()
  "Opens specific config file"
  (interactive)
  (setq name (read-from-minibuffer "Config name: "))
  (setq default-directory "~/")
  (find-file (format "~/.emacs.d/lisp/init-%s.el" name))
  (setq default-directory last-default-dir))

(provide 'init-utils)
