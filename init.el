;; melpa install
;; (require 'cl) を見逃す
(setq byte-compile-warnings '(not cl-functions obsolete))

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
    highlight-indent-guides
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
    ivy
    counsel
    mozc
    leaf
    rainbow-delimiters
    whitespace
    mwim
    py-isort
    poetry
    )
  )
(mapc #'(lambda (package)
      (unless (package-installed-p package)
        (package-install package)))
      myPackages)

;; exec-path-from-shell
(exec-path-from-shell-initialize)


(add-to-list 'load-path "~/.emacs.d/init.d")
(load "leaf_config")
(load "keybind")
(load "layout")
(load "sidebar")
(load "company_config")
(load "elpy_config")
(load "mozc_config")
(load "indent-guides_config")
(load "rainbow-delimiters_config")
(load "py-isort_config")
(load "white-space-mode_config")
;(load "poetry_config")
(load "flycheck_config")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-selection-wrap-around t)
 '(company-tooltip-limit 12)
 '(company-transformers '(company-sort-by-occurrence))
 '(global-company-mode t)
 '(global-whitespace-mode t)
 '(highlight-indent-guides-auto-enabled t)
 '(highlight-indent-guides-character 124)
 '(highlight-indent-guides-method 'character)
 '(highlight-indent-guides-responsive t)
 '(package-selected-packages
   '(poetry yasnippet-snippets highlight-indent-guides mozc counsel ivy use-package py-autopep8 neotree material-theme leaf flycheck exec-path-from-shell elpygen elpy dired-subtree blacken better-defaults all-the-icons))
 '(whitespace-display-mappings '((space-mark 12288 [9633]) (tab-mark 9 [187 9] [92 9])))
 '(whitespace-global-modes
   '(emacs-lisp-mode shell-script-mode sh-mode python-mode org-mode))
 '(whitespace-space-regexp "\\(　+\\)")
 '(whitespace-style '(face trailing tabs spaces empty space-mark tab-mark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Local Variables:
;; byte-compile-warnings: (not cl-functions obsolete)
;; End:
