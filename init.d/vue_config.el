;; ************************************************************************
;; mmm-mode
;; ************************************************************************
(use-package mmm-mode
  :ensure t
  :config
  (setq mmm-global-mode 'maybe)
  (setq mmm-submode-decoration-level 2)
  (set-face-background 'mmm-default-submode-face nil)

  (mmm-add-classes
   '((vue-embeded-slim-mode
      :submode slim-mode
      :front "^<template.*lang=\"pug\">\n"
      :back "^</template>")
     (vue-embeded-web-mode
      :submode web-mode
      :front "^<template>\n"
      :back "^</template>\n")
     (vue-embeded-js-mode
      :submode js-mode
      :front "^<script>\n"
      :back "^</script>")
     (vue-embeded-scss-mode
      :submode scss-mode
      :front "^<style.*lang=\"scss\">\n"
      :back "^</style>")))

  (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-slim-mode)
  (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-web-mode)
  (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-js-mode)
  (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-scss-mode))
