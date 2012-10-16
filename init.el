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

(setq my-packages
      (append
       '(el-get smex ido-ubiquitous paredit yasnippet inf-ruby rvm ruby-compilation
		magit haml-mode bundler sass-mode coffee-mode php-mode-improved powerline
                smarty-mode)
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
