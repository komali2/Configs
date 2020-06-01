;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     rust
     yaml
     go
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     (auto-completion :variables
                      auto-completion-return-key-behavior 'nil
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-help-tooltip 'manual
                      auto-completion-private-snippets-directory nil )
     better-defaults
     emacs-lisp
     git
     markdown
     (org :variables
          org-projectile-file "~/Dropbox/org/projects.org"
          org-enable-org-journal-support t)
     (shell :variables
           shell-default-height 30
           shell-default-position 'bottom)
     spell-checking
     c-c++
     semantic
     syntax-checking
     version-control
     javascript
     python
     sql
     html
     typescript
     erc
     org-roam
     mu4e
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(org-super-agenda)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7)
				(agenda . 5)
				(todos . 5))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         vscode-default-high-contrast
                         spacemacs-dark
       )
   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("FiraCode-Normal"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."


(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)
(setq org-directory "~/Dropbox/org")


(with-eval-after-load 'org
  (require 'org-agenda)
  (org-defkey org-mode-map [(meta return)] 'org-meta-return)  ;; The actual fix
  (setq org-roam-index-file "~/Dropbox/org/notes/20200526213916-index.org")
  (setq org-default-notes-file (concat org-directory "/inbox.org"))
  (setq org-agenda-files '("~/Dropbox/org/"))
  (setq org-capture-templates
        `(("i" "inbox" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %?")
          ("j" "Journal entry" entry (function org-journal-find-location)
           "* %(format-time-string org-journal-time-format)%^{Title}\n%i%?")
          ("m" "Meeting Notes" entry (file+olp+datetree ,(concat org-directory "/meeting_notes.org"))
           "* %?")
          ("r" "Roam Notes" entry (file ,(concat org-directory "/notes/notes.org"))
           "* %?")

          ))
  (setq org-columns-default-format "%40ITEM(Task) %Effort(EE){:} %CLOCKSUM(Time Spent) %SCHEDULED(Scheduled) %DEADLINE(Deadline)")


  (setq q-view
          `("Q" "Agenda"
           ((agenda ""
                    ((org-agenda-span 'day)
                     (org-deadline-warning-days 365)))
            (tags-todo "-@home-@work-@mobile"
                  ((org-agenda-overriding-header "To Refile")
                   ;; (org-agenda-files (directory-files-recursively "~/Dropbox/org/" "\.org$"))
                   (org-agenda-files '("~/Dropbox/org/"))
                   (org-agenda-todo-ignore-deadlines t)_
                   (org-agenda-todo-ignore-scheduled t)_
                   (org-agenda-sorting-strategy '(priority-down tag-up))
                   ))
            (tags-todo "life+@home|@mobile"
                  ((org-agenda-overriding-header "Life Stuff")
                   (org-agenda-files '("~/Dropbox/org/"))
                   ;; (org-agenda-files (directory-files-recursively "~/Dropbox/org/" "\.org$"))
                   (org-agenda-todo-ignore-deadlines t)_
                   (org-agenda-todo-ignore-scheduled t)_
                   (org-agenda-sorting-strategy '(priority-down tag-up))
                   ))
            (todo "TODO"
                  ((org-agenda-overriding-header "Projects")
                   (org-agenda-files '("~/Dropbox/org/projects.org"))
                   (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                   ))
            nil
            )
           )
          )
  (setq w-view
           `("w" "Work"
             (
              (agenda ""
                      (
                       (org-super-agenda-groups
                        '((:discard (:not (:tag ("work")))))
                        )
                       (org-agenda-span 'day)
                       (org-deadline-warning-days 365)
                       ))
              (tags-todo "work"
                         ((org-agenda-overriding-header "All Work")
                          (org-agenda-files '("~/Dropbox/org/"))
                          (org-super-agenda-groups
                           '((:name "All Work Todos"
                                    (:auto-category t)
                                    :and (:tag ("work"))
                                    )
                             (:discard (:anything t))
                             )
                           )
                          (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                          ))
              nil
              )
             )
           )

  (setq l-view
           `("l" "Life "
             (
              (agenda ""
                      (
                       (org-agenda-files '("~/Dropbox/org/"))
                       (org-agenda-span 'day)
                       (org-deadline-warning-days 365)
                       (org-super-agenda-groups
                        '((:name "Life Agenda"
                                 (:auto-category t)
                                 :and (:tag ("life"))
                                 )
                          (:discard (:anything t))
                          )
                        )

                       ))

              (todo "TODO"
                         ((org-agenda-overriding-header "")
                          (org-agenda-files '("~/Dropbox/org/"))
                          (org-super-agenda-groups
                           '((:name "Needs Filing"
                                    :and (:not(:tag ("life" "work" "project" "read")))
                                    )
                             (:discard (:anything t))
                             )
                             )
                           )
                          (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                          )
              (todo "TODO"
                    ((org-agenda-overriding-header "")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:name "Reading"
                               :and (:tag ("read"))
                               )
                        (:discard (:anything t))
                        )
                      )
                     )
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                    )

              (todo "TODO"
                    ((org-agenda-overriding-header "")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:name "All Life Todos"
                               :and (:tag ("life"))
                               )
                        (:discard (:anything t))
                        )
                      )
                     )
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                    )
              (tags-todo "personal"
                    ((org-agenda-overriding-header "")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:auto-category t)))
                     )
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))
                    )
              )
              nil
              )
           )
  (add-to-list 'org-agenda-custom-commands `,q-view)
  (add-to-list 'org-agenda-custom-commands `,w-view)
  (add-to-list 'org-agenda-custom-commands `,l-view)

  (setq org-agenda-window-setup 'current-window)
  )



  (setq org-journal-dir "~/Dropbox/org/journal/")
  (setq typescript-indent-level 2)
  (setq js-indent-level 2)
  (indent-guide-global-mode)
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue?\\'" . web-mode))

;; ;; Fixes error with spacemacs using wrong org mode function
;; (with-eval-after-load 'org
;;   ;; Replace org-set-tags with org-set-tags-command in keybinding
;;   (spacemacs/set-leader-keys-for-major-mode 'org-mode ":" 'org-set-tags-command)
;; )
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-script-padding 0)
  )
(with-eval-after-load 'web-mode
  (my-web-mode-hook))
(defun big-fat-json-file ()
  "Hit this when u got a fatty file"
  (interactive)
  (visual-line-mode -1 )
  (spacemacs/disable-smooth-scrolling)
  )
(defvar org-current-effort "1:00" "Current effort for agenda items.")
(defun my-org-agenda-set-effort (effort)
  "Set the effort property for the current headline."
  (interactive
   (list (read-string (format "Effort [%s]: " org-current-effort) nil nil org-current-effort)))
  (setq jethro/org-current-effort effort)
  (org-agenda-check-no-diary)
  (let* ((hdmarker (or (org-get-at-bol 'org-hd-marker)
                       (org-agenda-error)))
         (buffer (marker-buffer hdmarker))
         (pos (marker-position hdmarker))
         (inhibit-read-only t)
         newhead)
    (org-with-remote-undo buffer
      (with-current-buffer buffer
        (widen)
        (goto-char pos)
        (org-show-context 'agenda)
        (funcall-interactively 'org-set-effort nil org-current-effort)
        (end-of-line 1)
        (setq newhead (org-get-heading)))
      (org-agenda-change-all-lines newhead hdmarker))))

(defun org-agenda-process-inbox-item ()
  "Process a single item in the org-agenda."
  (org-with-wide-buffer
   (org-agenda-set-tags)
   (org-agenda-priority)
   (call-interactively 'my-org-agenda-set-effort)
   (org-agenda-refile nil nil t)))

(spacemacs/declare-prefix "o" "custom")
(spacemacs/set-leader-keys "opc" 'org-projectile-project-todo-completing-read)
(spacemacs/set-leader-keys "opC" 'org-projectile-project-todo-entry)
(spacemacs/set-leader-keys "oe" 'org-agenda-process-inbox-item)
(setq smtpmail-stream-type 'starttls)
(setq smtpmail-default-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)
(setq smtpmail-debug-info t)
(setq message-send-mail-function 'smtpmail-send-it )
(auth-source-pass-enable)
(setq auth-sources '(password-store))
(setq auth-source-debug t)
(setq auth-source-do-cache nil)

(with-eval-after-load 'mu4e
    (setq mail-user-agent 'mu4e-user-agent)
    (setq mu4e-compose-format-flowed t)
    (setq message-kill-buffer-on-exit t)
    ;; (setq message-send-mail-function 'smtpmail-send-it )
    (setq mu4e-sent-messages-behavior 'delete )
    (setq mu4e-get-mail-command "offlineimap" )
    (setq mu4e-update-interval 300 )
    (setq mu4e-user-mail-address-list '("rogersjcaleb@gmail.com"
                                        "caleb@potatolondon.com"
                                        "caleb@potatosanfrancisco.com"
                                        "caleb.rogers@potatosanfrancisco.com"
                                        "caleb.rogers@p.ota.to.com"
                                        "caleb@p.ota.to.com"
                                        "caleb.rogers@potatolondon.com"
                                        "caleb@calebjay.com")
          )
    (setq mu4e-maildir "~/Mail")

    (setq mu4e-context-policy 'ask)
    (setq mu4e-contexts
          `( ,(make-mu4e-context
               :name "Personal"
               :enter-func (lambda () (mu4e-message "Entering Personal context"))
               :leave-func (lambda () (mu4e-message "Leaving Personal context"))
               ;; we match based on the contact-fields of the message
               :match-func (lambda (msg)
                             (when msg
                               (string-match-p "^/gmailhome" (mu4e-message-field msg :maildir))))
               :vars '( ( user-mail-address	    . "rogersjcaleb@gmail.com"  )
                        ( user-full-name	    . "Caleb Rogers" )
                        ( mu4e-drafts-folder . "/gmailhome/[Gmail].Drafts" )
                        ( mu4e-sent-folder   . "/gmailhome/[Gmail].Sent Mail" )
                        ( mu4e-trash-folder  . "/gmailhome/[Gmail].Trash" )
                        ( mu4e-refile-folder . "/gmailhome/[Gmail].Archive")
                        ( mu4e-maildir-shortcuts .
                                                 (
                                                  ("/gmailhome/INBOX"  . ?i)
                                                  ;; ("/Sent"   . ?s)
                                                  ;; ("/Trash"  . ?t)
                                                  )
                                                 )
                        (smtpmail-smtp-user . "rogersjcaleb@gmail.com")
                        ))
             ,(make-mu4e-context
               :name "Work"
               :enter-func (lambda () (mu4e-message "Switch to the Work context"))
               :leave-func (lambda () (mu4e-message "Leaving Work context"))
               ;; we match based on the maildir of the message
               ;; this matches maildir /Arkham and its sub-directories
               :match-func (lambda (msg)
                             (when msg
                               (string-match-p "^/gmailwork" (mu4e-message-field msg :maildir))))
               :vars '( ( user-mail-address	     . "caleb.rogers@potatolondon.com" )
                        ( user-full-name	     . "Caleb Rogers" )
                        ( mu4e-drafts-folder . "/gmailwork/[Gmail].Drafts" )
                        ( mu4e-sent-folder   . "/gmailwork/[Gmail].Sent Mail" )
                        ( mu4e-trash-folder  . "/gmailwork/[Gmail].Trash" )
                        (mu4e-refile-folder . "/gmailwork/[Gmail].Archive")
                        ( mu4e-maildir-shortcuts .
                                                 (
                                                  ("/gmailwork/INBOX"  . ?i)
                                                  ;; ("/Sent"   . ?s)
                                                  ;; ("/Trash"  . ?t)
                                                  )
                                                 )
                        (smtpmail-smtp-user . "caleb.rogers@potatolondon.com")

                        ))
             ,(make-mu4e-context
               :name "Caleb"
               :enter-func (lambda () (mu4e-message "Switch to the Caleb context"))
               :leave-func (lambda () (mu4e-message "Leaving Caleb context"))
               ;; we match based on the maildir of the message
               ;; this matches maildir /Arkham and its sub-directories
               :match-func (lambda (msg)
                             (when msg
                               (string-match-p "^/calebjay" (mu4e-message-field msg :maildir))))
               :vars '( ( user-mail-address	     . "caleb@calebjay.com" )
                        ( user-full-name	     . "Caleb Rogers" )
                        ( mu4e-drafts-folder . "/calebjay/INBOX.Drafts" )
                        ( mu4e-sent-folder   . "/calebjay/INBOX.Sent" )
                        ( mu4e-trash-folder  . "/calebjay/INBOX.Trash" )
                        (mu4e-refile-folder . "/calebjay/INBOX.Archive")
                        ( mu4e-maildir-shortcuts .
                                                 (
                                                  ("/calebjay/INBOX"  . ?i)
                                                  ;; ("/Sent"   . ?s)
                                                  ;; ("/Trash"  . ?t)
                                                  )
                                                 )
                        (smtpmail-smtp-user . "caleb@calebjay.com")
                        (smtpmail-default-smtp-server . "mail.calebjay.com")
                        (smtpmail-smtp-server . "mail.calebjay.com")
                        (smtpmail-smtp-service . 465)
                        (smtpmail-stream-type . ssl)
                        (mu4e-sent-messages-behavior . sent )
                       ))
             ))
    )
)
