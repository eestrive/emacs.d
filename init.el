;;光标设置
;;(set-default 'cursor-type
;;	     'hbar)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)
;;（）成对显示
(show-paren-mode)
;; () {}成对写和删除
(electric-pair-mode)
;;高亮当前行
(global-hl-line-mode t)
;;打开自动提示
(ido-mode t)
;; c-x [left, right] 窗口移动
(winner-mode t)
;; shift-{left,right}多窗口移动
(windmove-default-keybindings)
;;窗口主题
(load-theme 'wombat)
;;(load-theme 'solarized t)
;; max size window
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(require-package 'color-theme-sanityinc-solarized)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(require 'pyim)
(pyim-basedict-enable)   ; 拼音词库
(setq default-input-method "pyim")
