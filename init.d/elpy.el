;; elpy
(elpy-enable)
(setq elpy-rpc-python-command "/home/tokuteacher/.pyenv/shims/python")
(setq elpy-rpc-virtualenv-path 'current)


;; Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; autopep8
;(require 'py-autopep8)
;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
