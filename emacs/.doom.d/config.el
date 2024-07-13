;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Caleb Rogers"
      user-mail-address "caleb@calebjay.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 15 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "FiraCode NerdFont" :size 14))

;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'tsdh-dark)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Org/")
(setq org-roam-directory "~/Org/notes")
(setq org-default-notes-file "~/Org/inbox.org")
(setq org-refile-targets
      '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9)))

(setq org-outline-path-complete-in-steps nil) ; Refile in a single go
(setq org-refile-use-outline-path t) ; Show full paths for refiling
(setq org-roam-v2-ack t )
(setq org-enable-hugo-support t )
(setq org-startup-indented t )
(setq org-outline-path-complete-in-steps nil ) ; Refile in a single go
(setq org-refile-use-outline-path t ) ; Show full paths for refiling




;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

;; (map!
;;  ", g g" #'evil-goto-definition
;;  ", g s" #'evil-goto-definition-search
;;  ", g i" #'evil-goto-definition-imenu
;;  )


(setq which-key-idle-delay 0.1)
(use-package! org-super-agenda
  :after org-agenda
  :init
  (setq org-agenda-files
        (seq-filter (lambda(x) (not (string-match "/notes/"(file-name-directory x))))
                    (directory-files-recursively "~/Org" "\\.org$")
                    ))
  (setq org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t%-6e% s")
                                   (todo . " %i %-12:c %-6e")
                                   (tags . " %i %-12:c %-6e")
                                   (search . " %i %-12:c%-6e")))
  (setq org-todo-keywords
        '((sequence "TODO" "NEXT" "PROJECT" "WAITING" "|" "DONE")))
  (setq org-capture-templates
        `(("i" "inbox" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %? \n %U"
           :prepend t)
          ("w" "Work Todo" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %? :work:\n")
          ("5" "508 Todo" entry (file+olp ,(concat org-directory "/work.org") "508" "tasks")
           "* TODO %? \n %U"
           :prepend t)
          ("o" "Cofactr Todo" entry (file+olp ,(concat org-directory "/work.org") "cofactr" "tasks")
           "* TODO %? \n %U"
           :prepend t)
          ("b" "Blog Post Idea" entry (file+olp ,(concat org-directory "/projects.org") "blog" "Pending Articles")
           "* TODO %? \n %U"
           :prepend t)
          ("p" "Project idea" entry (file+olp ,(concat org-directory "/projects.org") "Project ideas")
           "* TODO %? \n %U"
           :prepend t)
          ))
  (setq org-columns-default-format "%40ITEM(Task) %Effort(EE){:} %CLOCKSUM(Time Spent) %SCHEDULED(Scheduled) %DEADLINE(Deadline)")
  (setq daily-agenda-view
        `("dd" "Daily Agenda"
          (
           (agenda ""
                   (
                    (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                    (org-agenda-span 'day)
                    (org-deadline-warning-days 5)
                    (org-super-agenda-groups
                     '(
                       ( :time-grid t)
                       ( :auto-category t)
                       ))
                    (lambda () (message "Executing Daily Agenda"))
                    )))))


  (setq weekly-agenda-view
        `("dw" "Weekly Agenda"
          (
           (agenda ""
                   (
                    (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                    (org-agenda-span 'week)
                    (org-deadline-warning-days 5)
                    (org-super-agenda-groups
                     '((:auto-category t :time-grid t))))))))


  (setq wait-view
        `("dW" "All Waiting"
          ( (todo "WAITING"
                  ((org-agenda-overriding-header "All Waiting")
                   (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )
  (setq next-unscheduled-view
        `("gn" "Next with no Scheduled"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "All Waiting")
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled 'deadline))
                   (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )

  (setq gtd-view
        `("gG" "All GTD"
          ( (tags-todo "GTD"
                       ((org-agenda-overriding-header "All GTD")
                        (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )
  (setq gtd-persp-view
        `("gP" "All GTD Perspectives"
          ( (tags-todo "Persp"
                       ((org-agenda-overriding-header "All GTD Perspectives")
                        (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )

  (setq gtd-project-view
        `("gp" "All GTD Projects"
          ( (todo "PROJECT"
                  ((org-agenda-overriding-header "All GTD Projects")
                   (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )
  (setq gtd-file-bad-view
        `("gF" "GTD Needs Filing Bad"
          ( (tags-todo "-GTD"
                       ((org-agenda-overriding-header "Needs GTD filing badly")
                        (org-super-agenda-groups '((:auto-property "CATEGORY"))))) )) )
  (setq gtd-need-file-inbox
        `("gf"  ;; key
          "GTD Needs Filing Inbox" ;; description
          todo ;; type
          "TODO" ;; match
          ;; local settings
          ((
            org-agenda-files '("~/Org/inbox.org")
            org-agenda-overriding-header "Needs GTD filing")
           (org-super-agenda-groups '((:auto-property "CATEGORY")))))  )

  (setq gtd-aof-view
        `("ga" "GTD Areas of Focus"
          ( (tags-todo "AOF"
                       ((org-agenda-overriding-header "Areas of Focus")
                        (org-super-agenda-groups
                         '((:auto-map (lambda (item)
                                        (-when-let* ((marker (get-text-property 0 (org-entry-get (item) "TAGS")))
                                                     )
                                          )
                                        (concat "AOF: " marker)
                                        )))
                         ))
                       ))))

  (setq gtd-projects-with-no-next-calendar-view
        `("gm"  ;; key
          "Projects with no NEXT / Calendar" ;; description
          todo ;; type
          "PROJECT" ;; match
          ;; local settings
          ((
            org-agenda-files '("~/Org/inbox.org")
            org-agenda-overriding-header "Projects with no NEXT and no schedule")
           (org-super-agenda-groups '((
                                       :name "Projects w/o NEXT or aren't scheduled" :discard (:children "NEXT" :scheduled t :deadline t)
                                       )))))  )

  (setq gtd-all-waiting
        `("gw"  ;; key
          "All Waiting" ;; description
          todo ;; type
          "WAITING" ;; match
          ;; local settings
          ((
            org-agenda-files '("~/Org/inbox.org")
            org-agenda-overriding-header "All waiting")
           (org-super-agenda-groups '((
                                       :name "All Waiting" :auto-category t
                                       )))))  )


  (setq gtd-projects-with-no-next-view
        `("gN"  ;; key
          "Projects with no NEXT" ;; description
          todo ;; type
          "PROJECT" ;; match
          ;; local settings
          ((
            org-agenda-files '("~/Org/inbox.org")
            org-agenda-overriding-header "Projects with no NEXT")
           (org-super-agenda-groups '((
                                       :name "Projects w/o NEXT" :discard (:children "NEXT")
                                       )))))  )


  (setq gtd-context-home-view
        `("xh" "Home Context Tasks"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "Home Context")
                   (org-super-agenda-groups '(
                                              (:name "Requires Home" :and ( :tag ("@home" "@laptop" "@phone") :not ( :tag "@out" :scheduled t :deadline t)))
                                              (:discard (:anything t))
                                              )))))))
  (setq gtd-context-laptop-view
        `("xl" "Laptop Context Tasks"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "Laptop Context")
                   (org-super-agenda-groups '(
                                              (:name "can be done on phone or laptop" :and (:tag ( "@laptop" "@phone" ) :not (:scheduled t :deadline t)))
                                              (:discard (:anything t))
                                              )))))))

  (setq gtd-context-out-view
        `("xo" "Out Context Tasks"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "Out Context")
                   (org-super-agenda-groups '(
                                              (:name "Requires out" :and ( :tag  "@out"  :not ( :tag "@home")))
                                              )))))))
  (setq gtd-test-aof-view
        `("xp" "Areas of Focus"
          ( (tags-todo "AOF"
                       ((org-agenda-overriding-header "Areas of Focus")
                        (org-super-agenda-groups '(
                                                   (:name "Test" :tag ("{aof@.+"}) )
                                                   )))))))

  (setq gtd-next-only-view
        `("fh" "Next at Home"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "Next at Home")
                   (org-super-agenda-groups '(
                                              (:name "Next at Home" :tag ( "@home" "@laptop" "@phone" )  )
                                              )))))))
  (setq nestor-view
        `("f" "Nestor's Stuff"
          ( (todo "NEXT"
                  ((org-agenda-overriding-header "Nestor Stuff")
                   (org-super-agenda-groups '(
                                              (:name "Stuff nestor can do / help with"  :tag ("nestor") )
                                              (:discard (:anything t))
                                              )))))))


  (add-to-list 'org-agenda-custom-commands
               '("bd" agenda "Today's Deadlines"
                 ((org-agenda-span 'day)
                  (org-agenda-skip-function '(org-agenda-skip-deadline-if-not-today))
                  (org-agenda-entry-types '(:deadline))
                  (org-agenda-overriding-header "Today's Deadlines "))))
  (add-to-list 'org-agenda-custom-commands
               '("bs" agenda "Today's Schedule"
                 ((org-agenda-span 'day)
                  (org-agenda-skip-function '(org-agenda-skip-schedule-if-not-today))
                  (org-agenda-entry-types '(:schedule))
                  (org-agenda-overriding-header "Today's Schedule "))))

  ;; define "R" as the prefix key for reviewing what happened in various
  ;; time periods
  (add-to-list 'org-agenda-custom-commands
               '("R" . "Review" )
               )
  (add-to-list 'org-agenda-custom-commands
               '("g" . "GTD" )
               )
  (add-to-list 'org-agenda-custom-commands
               '("d" . "Calendar Agendas" )
               )
  (add-to-list 'org-agenda-custom-commands
               '("x" . "Contexts" )
               )

  ;; Common settings for all reviews
  (setq efs/org-agenda-review-settings
        '((org-agenda-files '("~/Org"))
          (org-super-agenda-groups
           '((:auto-property "CATEGORY")))
          (org-agenda-show-all-dates t)
          (org-agenda-start-with-log-mode t)
          (org-agenda-start-with-clockreport-mode t)
          (org-agenda-archives-mode t)
          ;; I don't care if an entry was archived
          (org-agenda-hide-tags-regexp
           (concat org-agenda-hide-tags-regexp
                   "\\|ARCHIVE"))
          ))

  ;; Show the agenda with the log turn on, the clock table show and
  ;; archived entries shown.  These commands are all the same exept for
  ;; the time period.
  (add-to-list 'org-agenda-custom-commands
               `("Rw" "Week in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'week)
                     (org-agenda-start-on-weekday 0)
                     (org-agenda-overriding-header "Week in Review"))
                   )
                 ("~/org/review/week.html")
                 ))


  (add-to-list 'org-agenda-custom-commands
               `("Rd" "Day in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'day)
                     (org-agenda-overriding-header "Day in Review"))
                   )
                 ("~/org/review/day.html")
                 ))

  (add-to-list 'org-agenda-custom-commands
               `("Rm" "Month in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'month)
                     (org-agenda-start-day "01")
                     (org-read-date-prefer-future nil)
                     (org-agenda-overriding-header "Month in Review"))
                   )
                 ("~/org/review/month.html")
                 ))

  (add-to-list 'org-agenda-custom-commands
               `("bm" "Meetings"
                 agenda ""
                 (
                  (tags "")
                  (org-agenda-files (directory-files-recursively "~/Org" "\\.org$"))
                  )
                 ))

  (defun org-agenda-skip-deadline-if-not-today ()
    "If this function returns nil, the current match should not be skipped.
Otherwise, the function must return a position from where the search
should be continued."
    (ignore-errors
      (let ((subtree-end (save-excursion (org-end-of-subtree t)))
            (deadline-day
             (time-to-days
              (org-time-string-to-time
               (org-entry-get nil "DEADLINE"))))
            (now (time-to-days (current-time))))
        (and deadline-day
             (not (= deadline-day now))
             subtree-end))))

  (defun org-agenda-skip-schedule-if-not-today ()
    "If this function returns nil, the current match should not be skipped.
Otherwise, the function must return a position from where the search
should be continued."
    (ignore-errors
      (let ((subtree-end (save-excursion (org-end-of-subtree t)))
            (schedule-day
             (time-to-days
              (org-time-string-to-time
               (org-entry-get nil "SCHEDULED"))))
            (now (time-to-days (current-time))))
        (and schedule-day
             (not (= deadline-day now))
             subtree-end))))

  (add-to-list 'org-agenda-custom-commands `,wait-view)
  (add-to-list 'org-agenda-custom-commands `,daily-agenda-view)
  (add-to-list 'org-agenda-custom-commands `,weekly-agenda-view)


  (add-to-list 'org-agenda-custom-commands `,gtd-view)
  (add-to-list 'org-agenda-custom-commands `,next-unscheduled-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-persp-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-project-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-file-bad-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-need-file-inbox)
  (add-to-list 'org-agenda-custom-commands `,gtd-aof-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-context-home-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-context-laptop-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-context-out-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-test-aof-view)


  ;; TESTING:
  (add-to-list 'org-agenda-custom-commands `,gtd-projects-with-no-next-view)
  (add-to-list 'org-agenda-custom-commands `,gtd-projects-with-no-next-calendar-view)

  (add-to-list 'org-agenda-custom-commands `,gtd-next-only-view)
  (add-to-list 'org-agenda-custom-commands `,nestor-view)

  (add-hook 'org-agenda-mode-hook #'hack-dir-local-variables-non-file-buffer)
  ;; (add-to-list 'org-agenda-custom-commands `,d-view)

  (setq org-agenda-window-setup 'current-window)
  :config
  (org-super-agenda-mode)
  )
(after! lsp-mode)
(after! keychain-environment
  (keychain-refresh-environment)
  )
