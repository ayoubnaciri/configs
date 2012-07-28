;;----------------------------------------------
;; todo keywords
;;----------------------------------------------
(setq org-todo-keywords 
  (quote (
    (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
    (sequence "INTRPT(i)" "|" "RESOLVED(r)"))))

(setq org-todo-keyword-faces
   (quote (("TODO"      :foreground "gray"    :weight normal)
           ("NEXT"      :foreground "white"   :weight normal)
           ("DONE"      :foreground "green"   :weight normal)
           ("HOY"       :foreground "hotpink" :weight normal)
           ("NEXT"      :foreground "red"     :weight normal)
           ("RESOLVED"  :foreground "green"   :weight bold))))

;;----------------------------------------------
;; agenda configuration
;;----------------------------------------------
(setq org-agenda-files (quote ("c:/ayoub/docs/org/tasks.org"
                               "c:/ayoub/docs/org/refile.org"
                                                )))


;;----------------------------------------------
;; capture-file-archive config
;;----------------------------------------------
(setq org-directory "c:/ayoub/docs/org")
(setq org-default-notes-file(
     concat org-directory "/refile.org"))

;; (setq org-capture-templates
;;       (quote  (
;;       ("n" "Notes" entry (file "~/docs/org/refile.org")
;;       "* %^{Description}  %^g %? Added: %U")
;;       ("s" "schedule task" entry (file+headline 
;;       "c:/ayoub/docs/org/refile.org" "Unfiled")
;;       "* TODO %^{task} \nSCHEDULED: %^t"))))


;;----------------------------------------------
;; capture-file-archive config
;;----------------------------------------------

;; TODO exclude kb.org, refile.org


;; (setq org-agenda-custom-commands
;;       '(("o" "Office block agenda"
;;          ((agenda "" ((org-agenda-ndays 2))) 
;;                       ;; limits the agenda display to a single day
;;           (tags "review" ((org-agenda-files '("~/docs/org/tasks.org"))))
;;                       ;; limits the tag search to the file tasks.org
;;           (todo "NEXT"))
;;          ((org-agenda-compact-blocks t))) ;; options set here apply to 
;;                                           ;;the entire block
;;         ;; ...other commands here
;;         ))

; to remvove

;(setq org-agenda-files (file-expand-wildcards "~/docs/org/*.org"))
; org-mode customizations
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-clarity)

