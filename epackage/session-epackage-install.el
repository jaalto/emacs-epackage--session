(autoload 'session-jump-to-last-change          "session" "" t)
(autoload 'session-yank                         "session" "" t)
(autoload 'session-popup-yank-menu              "session" "" t)
(autoload 'session-file-opened-recompute        "session" "" t)
(autoload 'session-file-changed-recompute       "session" "" t)
(autoload 'session-find-file                    "session" "" t)
(autoload 'session-toggle-permanent-flag        "session" "" t)
(autoload 'session-save-session                 "session" "" t)
(autoload 'session-minibuffer-history-help      "session" "" t)
(autoload 'session-initialize                   "session" "" t)

(eval-after-load "cus-load"
  '(progn (custom-add-load 'data 'session)
          (custom-add-load 'session 'session)))

(defun session-epackage-org-reveal-session-jump ()
  (when (and (eq major-mode 'org-mode)
             (outline-invisible-p))
    (org-reveal)))

(add-hook 'session-after-jump-to-last-change-hook
	  'session-epackage-org-reveal-session-jump)

(provide 'session-epackage-install)
