;; Projectile
(use-package projectile
  :config
  (setq projectile-enable-caching t)
  (setq projectile-require-project-root nil)
  (setq projectile-globally-ignored-directories
        (append '(
                  ".git"
                  ".svn"
                  "out"
                  "repl"
                  "target"
                  "venv"
                  "node_modules"
                  "dist"
                  "lib"
                  )
                projectile-globally-ignored-directories))
  (setq projectile-globally-ignored-files
        (append '(
                  ".DS_Store"
                  "*.gz"
                  "*.pyc"
                  "*.jar"
                  "*.tar.gz"
                  "*.tgz"
                  "*.zip"
                  "*.elc"
                  "*-autoloads.el"
                  )
                projectile-globally-ignored-files))
  (projectile-global-mode))