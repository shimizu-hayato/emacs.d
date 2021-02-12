;; elpy
;(elpy-enable)
;(setq elpy-rpc-virtualenv-path 'current)
;(setq elpy-rpc-backend "jedi")

;; Flycheck
;(when (require 'flycheck nil t)
;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; autopep8
;(require 'py-autopep8)
;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(leaf elpy
  :ensure t
  :init
  (elpy-enable)
  :config
  (remove-hook 'elpy-modules 'elpy-module-highlight-indentation) ;; インデントハイライトの無効化
  (remove-hook 'elpy-modules 'elpy-module-flymake) ;; flymakeの無効化
  :custom
  (elpy-rpc-python-command . "python3") ;; https://mako-note.com/elpy-rpc-python-version/の問題を回避するための設定
  (flycheck-python-flake8-executable . "flake8")
  :bind (elpy-mode-map
         ("C-c C-r f" . elpy-format-code))
  )

(setq elpy-rpc-virtualenv-path 'current)
