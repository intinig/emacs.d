;; ;; a bit of slime
;; ;; I don't like that it references something that I can't be sure
;; ;; Emacs has by default, but this is currently the best way to have
;; ;; SLIME work seamlessly.
;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
;; (setq inferior-lisp-program "/usr/local/bin/ccl") ; your Lisp system

;; Change this to whatever you use. It's necessary on osx not to get
;; errors with M-x dired
(setq insert-directory-program "/usr/local/bin/gls")

;; Comment this if you want to stick to ispell in place of aspell
;; (setq ispell-program-name "/usr/local/bin/aspell")
;; (setq ispell-extra-args '("--sug-mode=ultra"))

;; Erlang initialization
;; Set the variables to your taste and needs
(add-to-list 'load-path "/usr/local/Cellar/erlang/R16B03-1/lib/erlang/lib/tools-2.6.13/emacs")
(setq erlang-root-dir "/usr/local/Cellar/erlang/R16B03-1")
(add-to-list 'exec-path "/usr/local/Cellar/erlang/R16B03-1/bin")
(setq erlang-man-root-dir "/usr/local/Cellar/erlang/R16B03-1/man")

;;(require 'erlang-start)
;;(require 'erlang-flymake)

;; ;; Needed for my environment. What follows now should be customized to
;; ;; your PATHS
;; (defun source-env-get (script &rest vars)
;;   "Source script in shell, then look for vars in the resulting subshell environment"
;;   (loop for line in (split-string (shell-command-to-string (concat "source " script " && set")) "[\n]" t)
;;         with result
;;         if (string-match "^\\([[:ascii:]]+\\)=\\(.*\\)$" line)
;;         do (let ((var (match-string 1 line))
;;                  (val (match-string 2 line)))
;;              (when (or (not vars) (member var vars))
;;                (push (cons var val) result)))
;;         finally return result))

;; (defun env-set-alist (alist)
;;   "Take an alist of string pairs, call setenv with them and return a list of strings by way of logging"
;;   (loop for (var . val) in alist
;;         do (setenv var val)
;;         collect (concat var " = " val)))

;; (unless (getenv "TERM_PROGRAM")
;;     (env-set-alist (source-env-get "~/.bash_profile" "PATH" "RIOT_GAMES_API_KEY" "RIOT_GAMES_NEW_KEY")))

;; (setq scala-interpreter "/usr/local/bin/scala")
;; (setq coffee-command "/usr/local/bin/coffee")

;; (setq lua-default-application "/usr/local/bin/lua")

;; (setq scala-interpreter "/usr/local/bin/scala")

;; customize this to your taste
;; (load-theme 'adwaita)

;; xiki
;; Load el4r, which loads Xiki
;; (add-to-list 'load-path "/Users/intinig/.rvm/gems/ruby-2.1.2/gems/trogdoro-el4r-1.0.10/data/emacs/site-lisp/")
;; (require 'el4r)
;; (el4r-boot)
;; (el4r-troubleshooting-keys)
