;; Keybindings

(setq x-meta-keysym 'super)
(setq x-super-keysym 'meta)

(global-set-key (kbd "C--") 'undo)
(global-set-key (kbd "C-r") 'redo)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

(global-set-key (kbd "C-,") 'other-window)
(global-set-key (kbd "C-.") 'previous-buffer)
(global-set-key (kbd "C-x 1") 'split-window-right)

(global-set-key (kbd "M-p") 'beginning-of-buffer)
(global-set-key (kbd "M-n") 'end-of-buffer)

(global-set-key (kbd "s-c") 'kill-ring-save)

(keyboard-translate ?\C-i ?\H-i)
(global-set-key [?\H-i] 'hippie-expand)

(defalias 'yes-or-no-p 'y-or-n-p)
(fset 'yes-or-no-p 'y-or-n-p)
