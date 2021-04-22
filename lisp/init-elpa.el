;; -*- coding: utf-8 -*-

(setq package-archives '(
                         ;; ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ;; ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("gnu" . "https://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "https://mirrors.163.com/elpa/melpa/")
                         ("melpa-stable" . "https://mirrors.163.com/elpa/melpa-stable/")
                         ))

;; On-demand installation of packages
(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given PACKAGE."
  (cond
   ((package-installed-p package min-version)
    t)
   ((or (assoc package package-archive-contents) no-refresh)
    (package-install package))
   (t
    (package-refresh-contents)
    (require-package package min-version t))))

(require-package 'pyim)
(require-package 'pyim-basedict)
(require-package 'posframe)
(require-package 'helm)
(require-package 'yasnippet)
(require-package 'auto-complete)
(require-package 'lsp-mode)
(require-package 'lsp-ui)

(provide 'init-elpa)
