;; Vue
(use-package mmm-mode)

(use-package vue-mode
  :requires mmm-mode
  :mode "\\.vue\\'"
  :config
  (setq tab-width 2)
  (setq mmm-submode-decoration-level 0)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))