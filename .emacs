(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(line-spacing 1)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 98 :width normal))))
 '(mode-line ((t (:height 100)))))

;; Packages
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; fetch the list of packages available 
(when (not package-archive-contents)
  (package-refresh-contents))

;; Auto-load missing packages
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (package-install package)))
 '(soothe-theme powerline sr-speedbar magit org js3-mode tern))

;; Theme
(load-theme 'soothe t)

;; Packages
(require 'powerline)
(powerline-default-theme)

(require 'sr-speedbar)

;; Some defaults
(setq default-tab-width 4)
(setq ring-bell-function 'ignore)
