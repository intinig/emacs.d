;; loading interface defaults ASAP
(load (concat user-emacs-directory "interface.el"))

;; loading package.el ASAP to avoid errors
;; (require 'package)
;; (package-initialize)

;; Initialize el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

(setq el-get-user-package-directory "~/.emacs.d/el-get-user/init/")
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes/")
(setq my-packages
      (append
       '(el-get actionscript-mode
                ag
		;;        apache-mode
                arduino-mode
		autotest
                bundler
                coffee-mode
		color-theme-zenburn
                dockerfile-mode
                gist
                ;;        git-modes
                go-mode
		;;        haml-mode
                htmlize
		;;        idle-highlight-mode
		ido-ubiquitous
		;;        inf-ruby
		;;        lua-mode
                magit
                markdown-mode
                org-mode
                paredit
		php-mode
                po-mode
                powerline
                rspec-mode
                ruby-compilation
		rvm
                sass-mode
		;;        scala-mode2
		;;        slime
                slim-mode
		;;        smartparens
		;;        smarty-mode
		smex
		;;       tidy
		web-mode
                yaml-mode
		yasnippet
		)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

;;
;; post el-get configuration
;;

;; function definitions
(load (concat user-emacs-directory "functions.el"))

;; load other emacs defaults
(load (concat user-emacs-directory "defaults.el"))

;; language hooks
(load (concat user-emacs-directory "languages.el"))

;; load system-tailored defaults you should probably edit this
(load (concat user-emacs-directory "system.el"))

;; emacs server goodness
(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4031c1ea0bb235b75a048bd92f3bf3aa984c9f7cc5b408f00f62ed99a6eecc09" "d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(magit-auto-revert-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
