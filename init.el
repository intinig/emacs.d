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
       '(el-get ag
		;;        apache-mode
		autotest
                bundler
                coffee-mode
                gist
                ;;        git-modes
                go-mode
		;;        haml-mode
		;;        idle-highlight-mode
		ido-ubiquitous
		;;        inf-ruby
		;;        lua-mode
                magit
                markdown-mode
                paredit
		;;        php-mode-improved
                powerline
                rspec-mode
                ruby-compilation
		rvm
		;;        sass-mode
		;;        scala-mode2
		;;        slime
		;;        smartparens
		;;        smarty-mode
		smex
		;;       tidy
		;;       web-mode
                yaml-mode
		;;        yasnippet
		zenburn-theme
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
 '(custom-safe-themes (quote ("d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
