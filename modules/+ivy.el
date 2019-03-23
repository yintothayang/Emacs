;; ivy
;; https://github.com/abo-abo/swiper

(use-package ivy
  :requires smex
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-ignore-order)))
  (setq ivy-initial-inputs-alist nil)
  (setq projectile-completion-system 'ivy)
  (setq counsel-async-filter-update-time 10000)
  (setq ivy-dynamic-exhibit-delay-ms 20)
  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-t") 'complete-symbol)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

;; (use-package posframe)
;; (use-package ivy-posframe
;;   :requires posframe
;;   :config
;;   (setq ivy-display-function #'ivy-posframe-display-at-point)
;;   (setq ivy-posframe-border-width 1)
;;   (setq ivy-posframe-parameters
;;         '((left-fringe . 10)))
;;   (ivy-posframe-enable))
;; ;; (setq ivy-display-function #'ivy-posframe-display)
;; ;; (setq ivy-display-function #'ivy-posframe-display-at-frame-center)
;; ;; (setq ivy-display-function #'ivy-posframe-display-at-window-center)
;; ;; (setq ivy-display-function #'ivy-posframe-display-at-frame-bottom-left)
;; ;; (setq ivy-display-function #'ivy-posframe-display-at-window-bottom-left)

(use-package counsel-projectile
  :defines personal-keybindings
  :bind ("C-x f" . counsel-projectile-find-file)
  :bind ("C-x p" . projectile-switch-open-project))

;; https://github.com/Yevgnen/ivy-rich
(use-package ivy-rich
  :requires ivy
  :config
  (setq ivy-format-function #'ivy-format-function-line)
  (ivy-rich-mode 1))