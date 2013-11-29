;; paredit for lisp dialects
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

;; smartparent - trying it out
;;(smartparens-global-mode t)
;;(add-to-list 'sp-ignore-modes-list 'erc-mode)

;; paredit for non lisps
;;(add-hook 'ruby-mode-hook 'intinig-paredit-nonlisp)
;;(add-hook 'html-mode-hook 'intinig-paredit-nonlisp)

;; highlight current line
;;(add-hook 'prog-mode-hook 'intinig-turn-on-hl-line-mode)

;; highlight words
;;(add-hook 'prog-mode-hook 'idle-highlight-mode)

;; ruby mode defaults
(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "C-l") 'intinig-insert-equals-l)
     (define-key ruby-mode-map (kbd "C-x t") 'ruby-compilation-this-buffer)
     (define-key ruby-mode-map (kbd "C-x C-t") 'intinig-rake-spec)
     ))

;; sass compilation in sass mode
;; (eval-after-load 'sass-mode
;;  '(progn
;;     (define-key sass-mode-map (kbd "C-x t") 'sass-compile-this-buffer)
;;     (define-key sass-mode-map (kbd "C-x C-t") 'sass-compile-region)))

;; no deep indentation for ruby
(setq ruby-deep-indent-paren nil)

;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

;; We never want to edit Rubinius bytecode or MacRuby binaries
(add-to-list 'completion-ignored-extensions ".rbc")
(add-to-list 'completion-ignored-extensions ".rbo")

;; Web-mode goodies
;;(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Corona
;;(add-to-list 'auto-mode-alist '("build\\.settings$" . lua-mode))

;; tab-widths
;;(setq coffee-tab-width 2)
(setq js-indent-level 2)
;;(setq lua-indent-level 4)
