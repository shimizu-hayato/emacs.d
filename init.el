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

(load-theme 'material t)

;; exec-path-from-shell
(exec-path-from-shell-initialize)


(add-to-list 'load-path "~/.emacs.d/init.d")
(load "keybind")
(load "layout")
(load "sidebar")
(load "elpy")
