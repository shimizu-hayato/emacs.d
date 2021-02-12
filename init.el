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
    jedi
    company-jedi
    material-theme
    neotree
    use-package
    all-the-icons
    exec-path-from-shell
    company
    yasnippet
    ivy
    counsel
    mozc
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
(load "company_config")
(load "elpy_config")
(load "mozc_config")
(load "yasnippet_config")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(mozc counsel ivy use-package py-autopep8 neotree material-theme leaf flycheck exec-path-from-shell elpygen elpy dired-subtree blacken better-defaults all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
