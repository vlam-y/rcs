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

;;Modifs affichages
(custom-set-variables
;; ne pas afficher l'ecran d'accueil
'(inhibit-startup-screen t)
;; ne pas afficher la barre d'outils en haut
'(tool-bar-mode nil nil (tool-bar))
)

;; ne pas afficher la barre de scrolling
(set-scroll-bar-mode nil)

;; afficher la date au format 24h
(setq display-time-24hr-format t)
(display-time)

;; Afficher les numeros de colonnes et des lignes
(column-number-mode t)
(line-number-mode t)

;; Afficher le nom du fichier dans la barre de titre de la fenetre
(setq frame-title-format '(buffer-file-name "%b [%f]" "%b"))

;; Conserver les fichiers backups (nom du fichier suivi d'un ~) dans le
;; repertoire indique (ici ~/.emacsbackups)
(defvar backup-dir "~/.emacsbackups/")
(setq backup-directory-alist (list (cons "." backup-dir)))