;; Javascript

;; js2-mode
(use-package js2-mode
  :mode "\\.js\\'"
  :defer 10
  :config
  (setq js2-basic-offset 2)
  (setq-default js2-show-parse-errors nil)
  (setq-default js2-strict-missing-semi-warning nil)
  (setq-default js2-strict-trailing-comma-warning nil)
  :hook (('typescript-mode . 'highlight-symbol-mode)
	       ('typescript-mode . 'highlight-indent-guides-mode)))


;; js-mode
(setq js-indent-level 2)

;; (add-hook 'js2-mode-hook 'highlight-indentation-mode)
;; (add-hook 'js2-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'js2-mode-hook 'flycheck-mode))

;; lsp-javascript-typescript
;; (use-package lsp-javascript-typescript
;;   :init
;;   (add-hook 'js2-mode-hook #'lsp-javascript-typescript-enable))

;; indium
;; (use-package indium
;;   :config
;;   (add-hook 'js2-mode-hook #'indium-interaction-mode))
