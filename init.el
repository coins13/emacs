;;;; emacs4newcomer
;;;; (emacs 24.3 or higher)

(set-language-environment 'Japanese)
(setq default-major-mode 'text-mode)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(eval-when-compile
  (require 'cl))

;;; global-settings
(global-auto-revert-mode 1)

(setq visible-bell t)

(line-number-mode t)
(column-number-mode t)

(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

;;; C-kで行全体を削除
(setq kill-whole-line t)

