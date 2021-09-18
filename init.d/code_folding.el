; ----
; preferences
; ----
(add-hook 'elpy-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
; (define-key hs-minor-mode-map (kbd "C-#") 'hs-toggle-hiding)
(global-set-key (kbd "C--") 'hs-hide-block)
(global-set-key (kbd "C-=") 'hs-show-block)
