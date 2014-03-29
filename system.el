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

(require 'erlang-start)
(require 'erlang-flymake)

;; Needed for my environment. What follows now should be customized to
;; your PATHS
(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.bash_profile && printf $PATH")))

;; (setq scala-interpreter "/usr/local/bin/scala")
;; (setq coffee-command "/usr/local/bin/coffee")

;; (setq lua-default-application "/usr/local/bin/lua")

;; (setq scala-interpreter "/usr/local/bin/scala")

;; customize this to your taste
;; (load-theme 'adwaita)
