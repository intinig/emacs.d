;; saner buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; the god of modes
(ido-mode t)
(ido-ubiquitous t)

;; its little brother, for M-x
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; remove trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; no more beeps
(setq visible-bell t)

;; save backups in a better place
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))

;; highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; pasting over something kills it
(delete-selection-mode 1)
