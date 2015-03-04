;; loading interface defaults ASAP
(load (concat user-emacs-directory "interface.el"))

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
                exec-path-from-shell
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
                nginx-mode
                org-mode
                paredit
		php-mode
;;                po-mode
;;                powerline
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
;;		yasnippet
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
