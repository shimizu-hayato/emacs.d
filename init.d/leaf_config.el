(unless (package-installed-p 'leaf)
  (package-refresh-contents)
  (package-install 'leaf t))
(leaf leaf-keywords
  :ensure t
  :require t
  :init
  (leaf blackout :ensure t)
  :config
  (leaf-keywords-init)
  )
