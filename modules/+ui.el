;; UI

;; Full screen
(set-frame-parameter nil 'fullscreen 'fullboth)

;; ;; Remove scroll-bars
;; (scroll-bar-mode -1)
;; (menu-bar-mode -1)
;; (tool-bar-mode -1)
;; (tooltip-mode -1)

;; Font
(set-face-attribute 'default nil :height 124)
(set-frame-font "Office Code Pro")

(defun big-screen-font ()
  (interactive)
  (progn
    (set-face-attribute 'default nil :height 100)))

(defun small-screen-font ()
  (interactive)
  (progn
    (set-face-attribute 'default nil :height 130)))

;; Don't truncate lines
(setq-default truncate-lines t)

;; ;; Needed for hi-dpi scrolling
;; (pixel-scroll-mode)

;; Add Icons
;; Must install fonts ->  M-x all-the-icons-install-fonts
(use-package all-the-icons)

(use-package all-the-icons-ivy
  :config
  (all-the-icons-ivy-setup))

(use-package all-the-icons-dired
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;; Display Line Numbers
(setq-default display-line-numbers t)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; hl-line
(global-hl-line-mode 1)

;; hl-indentation
;; (use-package highlight-indentation)

;; indent
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq default-tab-width 2)

;; smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (show-smartparens-global-mode t))

;; indet
(use-package aggressive-indent
  :config
  (global-aggressive-indent-mode 1))

;; ;; (use-package dimmer
;; ;;   :config
;; ;;   (dimmer-mode 1))

;; ;; beacon - flash cursor when moving
;; ;; (use-package beacon
;; ;;   :config
;; ;;   (beacon-mode 1)
;; ;;   (setq beacon-color (face-attribute 'highlight :background nil t)
;; ;;         beacon-blink-when-buffer-changes t
;; ;;         beacon-blink-when-point-moves-vertically 10))

;; ;; different color brackets
;; ;; (use-package rainbow-delimiters
;; ;;   :commands rainbow-delimiters-mode
;; ;;   :config
;; ;;   (setq rainbow-delimiters-max-face-count 3)
;; ;;   (rainbow-delimiters-mode t))


;; (setq-default mode-line-format nil)

;; Doom modeline
(use-package doom-modeline
  :config
  (setq doom-modeline-icon t)
  :hook
  (after-init . doom-modeline-init))


(use-package git-gutter
  :config
  (global-git-gutter-mode t))

;; Shutup
(setq ring-bell-function 'ignore)

(use-package highlight-symbol
  :init
  (setq highlight-symbol-idle-delay .2))

;; https://github.com/DarthFennec/highlight-indent-guides
(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))
