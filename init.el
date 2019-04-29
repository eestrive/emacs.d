;; -*- coding: utf-8 -*-

(package-initialize)
(push (expand-file-name "~/.emacs.d/lisp") load-path)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)

(show-paren-mode)
(electric-pair-mode)
(global-hl-line-mode t)
(ido-mode t)
;; c-x [left, right] 窗口移动
(winner-mode t)
;; shift-{left,right}多窗口移动
(windmove-default-keybindings)
(load-theme 'wombat)
;;(load-theme 'solarized t)
;; max size window
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(require 'pyim)
(pyim-basedict-enable)   ; 拼音词库
(setq default-input-method "pyim")

(require 'init-cc-mode)
