(require 'recentf)
(add-to-list 'recentf-exclude (expand-file-name "~/.emacs.d/sublima"))
(make-directory (expand-file-name "~/.emacs.d/sublima") t)


;; Create Sublime Scratch Buffer
(defun sublima-scratch()
  (interactive)
  (let ((scratch-file (make-temp-file (expand-file-name "~/.emacs.d/sublima/scratch-"))))
    (find-file scratch-file)))


;; Auto Delete File on buffer Kill
(defun sublima-delete-associated-file ()
  (if (string-prefix-p (expand-file-name "~/.emacs.d/sublima") (buffer-file-name))
      (delete-file (buffer-file-name))))
(add-hook 'kill-buffer-hook #'sublima-delete-associated-file)


;; Save Buffer
(defun sublima-save-buffer ()
  (interactive)
  (if (and (string-prefix-p (expand-file-name "~/.emacs.d/sublima") (buffer-file-name))
           (not (buffer-modified-p)))
      (call-interactively 'save-buffer)
    (call-interactively 'write-file)
    (call-interactively 'save-buffer)))


;; Delete empty buffers
(defun delete-empty-scratches ()
  (eshell-command "find ~/.emacs.d/sublima -size 0 -delete"))
(add-hook 'emacs-startup-hook #'delete-empty-scratches)
(add-hook 'kill-emacs-hook #'delete-empty-scratches)


;; Open Sublima buffer on emacs startup
(let ((scratch-file (make-temp-file (expand-file-name "~/.emacs.d/sublima/scratch-"))))
    (setq initial-buffer-choice scratch-file))


;; Open scratch buffers on startup
(find-file "~/.emacs.d/sublima/*" t)


;; Auto Save on focus lost
(add-function :after after-focus-change-function (lambda () (save-some-buffers t)))