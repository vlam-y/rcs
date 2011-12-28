(setq load-path (append load-path (list "/vlam/config/emacs")))
(setq load-path (append load-path (list "/vlam/config/emacs/color-theme-6.6.0")))

;;loading lua things
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

;;configuring color-theme
(require 'color-theme)
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-ld-dark)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
