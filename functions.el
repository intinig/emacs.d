;; thanks emacs starter kit
;; (defun intinig-turn-on-hl-line-mode ()
;;  (when (> (display-color-cells) 8)
;;    (hl-line-mode t)))

;; thanks emacs starter kit
;; (defun intinig-paredit-nonlisp ()
;;  "Turn on paredit mode for non-lisps."
;;  (interactive)
;;  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
;;       '((lambda (endp delimiter) nil)))
;;  (paredit-mode 1))

(defun textmate-next-line ()
  "Inserts an indented newline after the current line and moves the point to it."
  (interactive)
  (end-of-line)
  (newline-and-indent))

;;(defun sass-compile-this-buffer ()
;;  "Takes the buffer you are working on and runs sass on it."
;;  (interactive)
;;  (shell-command-on-region (point-min) (point-max) "sass" "*SASS Output*" nil "SASS Error*" t))

;;(defun sass-compile-region ()
;;  "Runs sass on the current region."
;;  (interactive)
;;  (shell-command-on-region (region-beginning) (region-end) "sass" "*SASS Output*" nil "SASS Error*" t))

(defun intinig-insert-equals-l ()
  "Inserts in the buffer =>"
  (interactive)
  (insert " => "))


;; (defun corona ()
;;   (interactive)
;;   (shell-command "/Applications/CoronaSDK/Corona\\ Terminal &" "*corona*")
;;   (set-buffer "*corona*")
;;   (setq compilation-error-regexp-alist
;;         (list '("^.*?error: \\(.*?\\):\\([0-9]+\\)" 1 2)))
;;   (compilation-shell-minor-mode)
;;   (setq comint-move-point-for-output t))
