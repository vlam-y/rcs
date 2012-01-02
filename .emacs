;;loading manually installed modules
(setq load-path (append load-path (list "/vlam/config/emacs")))

;;loading lua things
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

;;configuring color-theme
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-ld-dark)

;;starts server mode
(server-start)

;;sets tramp (ssh file edition)
(require 'tramp)
(setq tramp-default-method "scp")

;;recent files module
(require 'recentf)
(setq recentf-auto-cleanup 'never) ;; disable before we start recentf!
(recentf-mode 1)

;;A la carte menu
(require 'lacarte)
(global-set-key [?\e ?\M-x] 'lacarte-execute-command)
(global-set-key [?\M-`] 'lacarte-execute-command)