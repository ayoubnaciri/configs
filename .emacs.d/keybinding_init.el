;-*- coding: utf-8 -*-

(global-set-key (kbd "M-a") 'execute-extended-command)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-x j j") 'bookmark-jump)
(global-set-key (kbd "C-x j s") 'bookmark-set)
(global-set-key (kbd "C-x j l") ' bookmark-bmenu-list)

;(global-set-key (kbd "C-+") 'text-scale-increase)
;(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-+") 'org-demode-subtree)
(global-set-key (kbd "C--") 'org-promote-subtree)
(global-set-key (kbd "C-0") 'text-scale-normal-size)

(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-S-z") 'redo)


(global-set-key "\C-k" 'kill-line)
(global-set-key "\M-k" 'backward-kill-word)

(global-set-key "\C-f" 'isearch-forward)
(global-set-key "\C-w" 'delete-other-window)


(global-set-key (kbd "<f4>") 'switch-to-buffer)
(global-set-key (kbd "<f5>") 'other-window)
(global-set-key (kbd "<f9>") 'kill-buffer)
(global-set-key (kbd "<f12>") 'org-agenda)


(global-set-key (kbd "<C-f7>") 'eval-current-buffer)
(global-set-key (kbd "<C-f9>") 'kill-buffer-and-window)







;; ----- TO REMOVE ----
;(global-set-key "\C-y" 'yank)
(defun browser-nav-keys ()
  "Add some browser styled nav keys for Info-mode.
  The following keys and mouse buttons are added:
 【Backspace】 and <mouse-4> for `Info-history-back'
 【Shift+Backspace】 and <mouse-5> for `Info-history-forward'."
 (local-set-key (kbd "<backspace>") 'Info-history-back)
 (local-set-key (kbd "<S-backspace>") 'Info-history-forward)
 (local-set-key (kbd "<mouse-4>") 'Info-history-back)
 (local-set-key (kbd "<mouse-5>") 'Info-history-forward)
  )

(add-hook 'Info-mode-hook 'browser-nav-keys)

;; In Windows, Alt+F4 closes the frame (or kill emacs if it is the last frame)
(if (and (boundp 'w32-initialized) w32-initialized)
    (global-set-key (kbd "M-<f4>") 'close-frame))
