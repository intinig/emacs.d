;; paredit for lisp dialects
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

;; highlight current line
(add-hook 'prog-mode-hook 'intinig-turn-on-hl-line-mode)

;; ruby compilation in ruby mode
(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "C-x t") 'ruby-compilation-this-buffer)
     (define-key ruby-mode-map (kbd "C-x C-t") 'ruby-compilation-this-test)))
