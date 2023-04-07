
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8-dos)
(prefer-coding-system 'utf-8-unix)
;(prefer-coding-system 'cp936)

;; (setq default-buffer-file-coding-system 'cp936)
(require 'pyim)
(pyim-basedict-enable)   ; 拼音词库
(setq default-input-method "pyim")

(provide 'init-chinese-mode)
