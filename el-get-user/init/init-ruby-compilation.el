(defun ruby-compilation-rake-spec ()
  "Runs rake spec"
  (interactive)
  (ruby-compilation-rake "spec"))

(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "C-x t") 'ruby-compilation-this-buffer)
     (define-key ruby-mode-map (kbd "C-x C-t") 'ruby-compilation-rake-spec)
     ))
