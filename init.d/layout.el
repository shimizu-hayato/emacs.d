; ----
; preferences
; ----

(load-theme 'material t)
; 括弧を自動で補完する
(electric-pair-mode 1)
;; tabにスペース４つを利用
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; 1行ごとの改ページ
(setq scroll-conservatively 1)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; メニューバーの非表示
; (menu-bar-mode -1)
;; ツールバーの非表示
(tool-bar-mode -1)
;; スクロールバーを非表示
(set-scroll-bar-mode nil)
;; (require 'cl) を見逃す
(setq byte-compile-warnings '(not cl-functions obsolete))
