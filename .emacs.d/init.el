; -*- coding: utf-8 -*-

(add-to-list 'load-path 
  (file-name-directory (or load-file-name buffer-file-name)))
(add-to-list 'load-path 
  (concat (file-name-directory (or load-file-name buffer-file-name)) 
    "packages"))

;; Tool-bar turned-off as soon as possible so the user cannot see it
;; TODO move to settints_init
(tool-bar-mode 0) 

;TODO (load "init_load_packages")
(load "keybinding_init")
(load "orgmode_init")
(load "settings_init")

;;---------------------------------------------------------------
;;      yansippet stuff
;;---------------------------------------------------------------

(require 'yasnippet)
(yas/global-mode 1)  ; use in all major modes

;; set and load personal snippets directory
(setq yas/root-directory "~/.emacs.d/packages/mysnippets")
(yas/load-directory yas/root-directory)


;(load "init_functions")

;(load "init_aliases")
;(load "init_abbrevs-lisp-mode")

;; ErgoEmacs shortcuts and menus
;(load "init_keybinding")
;(load "init_mouse")
;(load "init_clean_menus")

;; Turn on Open Recent menu under File menu before "Close" item
;; (Why here? because the File menu is initialized in init_clean_menus.el)
(require 'recentf)
(setq recentf-menu-before "Close")
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(recentf-mode 1)

;; Initialize emacs server if it is not already running
(require 'server)
(if (not (eq t (server-running-p server-name)))
    (server-start))

;; ---------------------- AYB --------------------------
(global-linum-mode t) ; line numbers
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)


;;------------------ TO REMOVE -------------
;(load "init_version")





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("c:/UBS/Dev/docs/org/business.org" "c:/UBS/Dev/docs/org/cpp.org" "c:/UBS/Dev/docs/org/dashboard.org" "c:/UBS/Dev/docs/org/issues.org" "c:/UBS/Dev/docs/org/productivity.org" "c:/UBS/Dev/docs/org/projects.org" "c:/UBS/Dev/docs/org/refile.org" "c:/UBS/Dev/docs/org/svn.org" "c:/UBS/Dev/docs/org/tasks.org" "c:/UBS/Dev/docs/org/ultrabond.org")))
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 3))))
 '(org-refile-use-outline-path t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
