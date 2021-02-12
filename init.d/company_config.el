(leaf company
  :ensure t
  :leaf-defer nil
  :blackout company-mode
  :bind ((company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-s" . company-filter-candidates)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ("C-i" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom ((company-tooltip-limit         . 12)
           (company-idle-delay            . 0) ;; 補完の遅延なし
           (company-minimum-prefix-length . 1) ;; 1文字から補完開始
           (company-transformers          . '(company-sort-by-occurrence))
           (global-company-mode           . t)
           (company-selection-wrap-around . t))
)
(leaf yasnippet
      :ensure t
      :blackout yas-minor-mode
      :custom ((yas-indent-line . 'fixed)
               (yas-global-mode . t))
      :bind ((yas-keymap
              ("<tab>" . nil))            ; conflict with company
             (yas-minor-mode-map
              ("C-c y i" . yas-insert-snippet)
              ("C-c y n" . yas-new-snippet)
              ("C-c y v" . yas-visit-snippet-file)
              ("C-c y l" . yas-describe-tables)
              ("C-c y g" . yas-reload-all)))
      :config
      (leaf yasnippet-snippets :ensure t)
      (defvar company-mode/enable-yas t
        "Enable yasnippet for all backends.")
      (defun company-mode/backend-with-yas (backend)
        (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
            backend
          (append (if (consp backend) backend (list backend))
                  '(:with company-yasnippet))))
      (defun set-yas-as-company-backend ()
        (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
        )
      :hook
      ((company-mode-hook . set-yas-as-company-backend))
)
