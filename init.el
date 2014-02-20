;;;; emacs4newcomer
;;;; (emacs 24.3 or higher)

(set-language-environment 'Japanese)
(setq default-major-mode 'text-mode)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(eval-when-compile
  (require 'cl))

;;; 今はメモリ資源が豊富な為GCの感覚を長くしましょう
(setq gc-cons-threshold (* 50 gc-cons-threshold))

;;; global-settings
(global-auto-revert-mode 1)

(setq visible-bell t)

(line-number-mode t)
(column-number-mode t)

(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Consolas")
  (set-fontset-font "fontset-default"
                    'japanese-jisx0208
                    '("Hiragino Maru Gothic ProN"))
  (set-fontset-font "fontset-default"
                    'katakana-jisx0201
                    '("Hiragino Maru Gothic ProN")))

;;; C-kで行全体を削除
(setq kill-whole-line t)

;; 対応するカッコを光らせる
(show-paren-mode 1)
;; ウィンドウに収まらない時だけ括弧内を光らせる
(setq show-paren-style 'mixed)
;; バックアップファイルを作らない
(setq backup-inhibited t)
;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;; 行番号設定
(global-linum-mode t)
;; F6で行番号を表示
(global-set-key [f6] 'linum-mode)
(setq linum-format "%3d ")

;; package
;; 詳細はEmacs JPを参照すること http://emacs-jp.github.io/packages/package-management/package-el.html
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; autocomplete
;;(require 'auto-complete-config)
;;(ac-config-default)

;; Flymake for java
;;(require 'flymake)
;;(defun flymake-java-init ()
;;  (flymake-simple-make-init-impl
;;   'flymake-create-temp-with-folder-structure nil nil
;;    buffer-file-name
;;    'flymake-get-java-cmdline))
;; (defun flymake-get-java-cmdline (source base-dir)
;;   (list "javac" (list "-J-Dfile.encoding=utf-8" "-encoding" "utf-8"
;;               source)))
;; (push '("\\.java$" flymake-java-init) flymake-allowed-file-name-masks)
;; (add-hook 'find-file-hook 'flymake-find-file-hook)
;; (add-hook 'java-mode-hook '(lambda () (flymake-mode t)))

;; undo-tree
;; (require 'undo-tree)
;; (global-undo-tree-mode t)
