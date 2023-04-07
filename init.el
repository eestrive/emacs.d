;; -*- coding: utf-8 -*-

;; (setq garbage-collection-messages t) ; for debug
(setq best-gc-cons-threshold (* 64 1024 1024))
(setq gc-cons-percentage 0.5)
(run-with-idle-timer 5 t #'garbage-collect)

;; all backups goto ~/.backups instead in the current directory
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;(setq-default auto-save-timeout 15) ; 15秒无动作,自动保存
;(setq-default auto-save-interval 100) ; 100个字符间隔, 自动保存

;; 按键异常声音忽略
(setq ring-bell-function 'ignore)
(package-initialize)
(push (expand-file-name "~/.emacs.d/lisp") load-path)

(menu-bar-mode -1)
;; (tool-bar-mode -1)
;; (scroll-bar-mode -1)
(column-number-mode)
(global-linum-mode t)

(show-paren-mode)
(electric-pair-mode)
(global-hl-line-mode t)
(ido-mode t)
;; c-x [left, right] 窗口移动
(winner-mode t)
;; shift-{left,right}多窗口移动
(windmove-default-keybindings)
(load-theme 'tango-dark)
;;(load-theme 'solarized t)
;; 设置最大窗口
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(require 'init-elpa)
(require 'init-cc-mode)
(require 'init-chinese-mode)
(require 'init-org)

;; yasnippet, 模板皮匹配插件
(require 'yasnippet)
(yas-global-mode 1)

;; auto-complete
(ac-config-default)

;; helm
(require 'helm)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-s") #'helm-occur-from-isearch)
(global-set-key (kbd "M-s") #'helm-occur-visible-buffers)
(helm-mode 1)

;; space repalace tabs
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq default-tab-width 4)

;; lsp-mode
;; (require 'lsp-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-ui lsp-mode auto-complete yasnippet helm posframe pyim-basedict pyim)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
