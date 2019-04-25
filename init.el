;;光标设置
;;(set-default 'cursor-type
;;	     'hbar)
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
