(require 'yasnippet)
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
    '("~/.emacs.d/yasnippets" ;; お好みで!!
    "~/.emacs.d/mysnippets"))
(yas-global-mode t)
