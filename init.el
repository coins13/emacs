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

