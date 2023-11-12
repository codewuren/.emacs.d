;;; init-basic.el
;;; Author: CodeWuRen

; Don't show the splash screen
(setq inhibit-startup-message t) 

; Change the asking's answer way
(fset 'yes-or-no-p 'y-or-n-p) 

; Highlight the ()
(show-paren-mode t) 

; Auto complete the ()
(electric-pair-mode t) 

; Set the electric-pair-mode's pair keywords
(setq electric-pair-pairs
      '((?\" . ?\")
        (?\( . ?\))
        (?\< . ?\>)
        (?\{ . ?\})))

; Set theme
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-dracula t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))


; Font set
;; Set default font
(set-face-attribute 'default nil
                    :family "JetBrains Mono"
                    :height 100
                    :weight 'normal
                    :width 'normal)

; Don't let Emacs make up backup file
(setq make-backup-files nil) 

; Don't make lockfile
(setq create-lockfiles nil) 

; Don't auto save the file
(setq auto-save-default nil) 

; The tab width
(setq-default tab-width 4)

; Use tab indent
(setq-default indent-tabs-mode nil) 

; Delete the tab by once
(setq backward-delete-char-untabify-method nil) 

; Close the menu bar
(menu-bar-mode -1) 

; Close the tool bar
(tool-bar-mode -1) 

; Close Scroll bar
(scroll-bar-mode -1) 

; Set tab bar not display
(tab-bar-mode -1)

; Close cursor blink
(blink-cursor-mode -1) 

; Always not display tab bar
(setq tab-bar-show nil) 

; Show the line number
;(global-linum-mode 1) 

(provide 'init-basic)
