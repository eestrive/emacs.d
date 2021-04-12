;; -*- coding: utf-8 -*-

;; 按键异常声音忽略
(setq ring-bell-function 'ignore)
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
;; 设置最大窗口
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(require 'init-elpa)
(require 'init-cc-mode)
;; (require 'init-chinese-mode)

;; yasnippet, 模板皮匹配插件
(require 'yasnippet)
(yas-global-mode 1)

