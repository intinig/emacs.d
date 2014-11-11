(defun rspec-toggle-spec-and-target-other-window ()
  "rspec-toggle-spec-and-target in other-window"
  (interactive)
  (if (= 1 (count-windows))
      (split-window-horizontally))
  (other-window 1)
  (rspec-toggle-spec-and-target))

(defun rspec-remote-options ()
  "Returns core options plus --tag remote"
  (concat (rspec-core-options) " --tag remote"))

(defun rspec-verify-remote ()
  "Runs remote specs."
  (interactive)
  (rspec-run-single-file (rspec-spec-file-for (buffer-file-name))
                         (rspec-remote-options)))

(define-key rspec-mode-keymap (kbd "C-c , s-t") 'rspec-toggle-spec-and-target-other-window)
(define-key rspec-mode-keymap (kbd "C-c , i") 'intinig-verify-single)

(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map (kbd "C-c , s-t") 'rspec-toggle-spec-and-target-other-window))

(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map (kbd "C-c , i") 'intinig-verify-single))
