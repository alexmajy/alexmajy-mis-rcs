(add-to-list 'load-path "~/.emacs.d")
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue)

(tool-bar-mode -1)
(display-time-mode t)
(column-number-mode t)
(show-paren-mode t)

;(set-fill-column 80)


;(SET-language-environment 'English)

(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'cn-gb-2312)
(set-terminal-coding-system 'euc-cn)
(set-buffer-file-coding-system 'euc-cn)
(set-selection-coding-system 'euc-cn)
(set-selection-coding-system 'cn-gb-2312)
(set-default-coding-systems 'euc-cn)
(setq locale-coding-system 'euc-cn)
;(modify-coding-system-alist 'process "*" 'euc-cn)
;(setq default-process-coding-system
;'(euc-cn . euc-cn))
;(setq-key/default pathname-coding-system 'euc-cn)

	

