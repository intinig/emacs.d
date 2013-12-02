(defun rspec-toggle-spec-and-target-other-window ()
  "rspec-toggle-spec-and-target in other-window"
  (interactive)
  (if (= 1 (count-windows))
      (split-window-horizontally))
  (other-window 1)
  (rspec-toggle-spec-and-target))

(define-key rspec-mode-keymap (kbd "C-c , s-t") 'rspec-toggle-spec-and-target-other-window)

(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map (kbd "C-c , s-t") 'rspec-toggle-spec-and-target-other-window))
