;;; init.el
;;; Author: CodeWuRen

; Require
(require 'package)

; Package Source Server
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")))

; Load config file
(load-file "~/.emacs.d/etc/init-config.el")
