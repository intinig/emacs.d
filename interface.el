;; Hide all GUI stuff. Emacs is no GUI!
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
    (when (fboundp mode) (funcall mode -1)))

;; sets the default font to menlo
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Menlo Regular-12"))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; default window size
(setq default-frame-alist '((width . 190) (height . 50) ))

;; no strange gnu guy
(setq inhibit-startup-message t)
