;; melpa install
(require 'package)
(setq package-archives
       '(("gnu" . "http://elpa.gnu.org/packages/")
    ("melpa" . "http://melpa.org/packages/")
    ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    flycheck          ;; On the fly syntax checking
    py-autopep8       ;; Run autopep8 on save
    blacken           ;; Black formatting on save
    material-theme
    neotree
    use-package
    all-the-icons
    exec-path-from-shell
    )
  )
(mapc #'(lambda (package)
      (unless (package-installed-p package)
        (package-install package)))
      myPackages)

;; exec-path-from-shell
(exec-path-from-shell-initialize)


(add-to-list 'load-path "~/.emacs.d/init.d")
(load "keybind")
(load "layout")
(load "sidebar")

(load-theme 'material t)
;; elpy
(elpy-enable)
(setq elpy-rpc-virtualenv-path 'current)

;; Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
