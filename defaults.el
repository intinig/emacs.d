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

;; save backups and autosaves in a better place
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name (concat user-emacs-directory "backups")) t)))

;; highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; pasting over something kills it
(delete-selection-mode 1)

;; just get snippets I installed, nothing else
(setq yas/snippet-dirs (concat user-emacs-directory "snippets"))
(yas/global-mode 1)

;; textmate behavior for enter key
(global-set-key (kbd "<s-return>") 'textmate-next-line)

;; magit-status
(global-set-key (kbd "C-x g") 'magit-status)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t))

;; can't do it at launch or emacsclient won't always honor it
(add-hook 'before-make-frame-hook 'esk-turn-off-tool-bar)

;; we're too lazy to type in yes
(defalias 'yes-or-no-p 'y-or-n-p)

;; initialize it you never know when it might come in handy
(random t)
