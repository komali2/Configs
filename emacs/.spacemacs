;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
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

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. "~/.mycontribs/")
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ruby
     php
     nginx
     csv
     lua
     emacs-lisp
     helm
     (lsp :variables
          lsp-idle-delay .5
          )
     treemacs
     rust
     yaml
     go
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-help-tooltip 'manual
                      auto-completion-private-snippets-directory nil )
     better-defaults
     git
     markdown
     (org :variables
          org-directory "~/Org"
          org-projectile-file "~/Org/projects.org"
          org-enable-roam-support t
          org-enable-org-journal-support t
          org-roam-directory "~/Org/zetel/"
          org-roam-index-file "~/Org/notes/20200526213916-index.org"
          org-default-notes-file (concat org-directory "/inbox.org")
          org-roam-v2-ack t
          org-enable-hugo-support t
          org-startup-indented t
          org-refile-targets '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9))
          org-outline-path-complete-in-steps nil ; Refile in a single go
          org-refile-use-outline-path t ; Show full paths for refiling
          org-startup-with-inline-images t
          org-image-actual-width '(300)
          org-enable-roam-ui t
          org-enable-roam-protocol t
          org-roam-file-exclude-regexp "\\.git/.*\\|logseq/.*$"
          ;; org-agenda-use-tag-inheritance nil
          ;; org-use-tag-inheritance nil
          ;; wasn't working for some reason with regex
          ;; org-tags-exclude-from-inheritance '("GTD" "Control" "Persp" "Context" "Task" "Action" "Project" "AOF" "Goal" "Vision" "Life" "{p@.+}" "{aof@.+}" "{goal@.+}" "{vision@.+}" )
          )
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     (spell-checking :variables spell-checking-enable-by-default nil)
     c-c++
     semantic
     syntax-checking
     version-control
     javascript
     (python :variables
             python-backend 'lsp
             python-lsp-server 'pyright)
     sql
     html
     ( typescript :variables
       ;; typescript-indent-level 2
       typescript-fmt-tool 'prettier
       typescript-fmt-on-save t
       )
     ;; (vue :variables vue-backend 'lsp)
     (node :variables node-add-modules-path t)
     racket
     tern
     common-lisp
     colors
     react
     ( svelte
       :variables svelte-backend 'lsp
       )
     tree-sitter
     github-copilot
     terraform
     prettier
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(org-super-agenda
                                      color-theme-sanityinc-tomorrow
                                      leuven-theme
                                      monokai-theme
                                      ample-theme
                                      moe-theme
                                      alect-themes
                                      flatland-theme
                                      gruber-darker-theme
                                      cyberpunk-theme
                                      solarized-theme
                                      anki-editor
                                      sml-mode
                                      keychain-environment
                                      org-ql
                                      helm-xref
                                      helm-org-ql
                                      ef-themes
                                      kanagawa-themes
                                      all-the-icons
                                      (neoscroll :location (recipe :fetcher github :repo "0WD0/neoscroll.el"))
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner '"~/Downloads/Pics/cyberpunk1.png"

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "nerd-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons nil

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; kanagawa-dragon
                         ;; kanagawa-lotus
                         ef-dark
                         ef-deuteranopia-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(all-the-icons :separator slant )

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("FiraCode Nerd Font"
                               :size 12.0
                               :weight normal
                               :width normal)

   ;; Default icons font, it can be `all-the-icons' or `nerd-icons'.
   dotspacemacs-default-icons-font 'all-the-icons

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
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
   ;; (default "C-M-m" for terminal mode, "M-<return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "M-<return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

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

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; It is also possible to use a posframe with the following cons cell
   ;; `(posframe . position)' where position can be one of `center',
   ;; `top-center', `bottom-center', `top-left-corner', `top-right-corner',
   ;; `top-right-corner', `bottom-left-corner' or `bottom-right-corner'
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; Whether side windows (such as those created by treemacs or neotree)
   ;; are kept or minimized by `spacemacs/toggle-maximize-window' (SPC w m).
   ;; (default t)
   dotspacemacs-maximize-window-keep-side-windows t

   ;; If nil, no load-hints enabled. If t, enable the `load-hints' which will
   ;; put the most likely path on the top of `load-path' to reduce walking
   ;; through the whole `load-path'. It's an experimental feature to speedup
   ;; Spacemacs on Windows. Refer the FAQ.org "load-hints" session for details.
   dotspacemacs-enable-load-hints nil

   ;; If t, enable the `package-quickstart' feature to avoid full package
   ;; loading, otherwise no `package-quickstart' attemption (default nil).
   ;; Refer the FAQ.org "package-quickstart" section for details.
   dotspacemacs-enable-package-quickstart nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 100

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative t
                                         :visual nil
                                         :size-limit-kb 1000)

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `ack' and `grep'.
   ;; (default '("rg" "ag" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "ack" "grep")

   ;; The backend used for undo/redo functionality. Possible values are
   ;; `undo-fu', `undo-redo' and `undo-tree' see also `evil-undo-system'.
   ;; Note that saved undo history does not get transferred when changing
   ;; your undo system. The default is currently `undo-fu' as `undo-tree'
   ;; is not maintained anymore and `undo-redo' is very basic."
   dotspacemacs-undo-system 'undo-fu

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%a:%t"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; The variable `global-spacemacs-whitespace-cleanup-modes' controls
   ;; which major modes have whitespace cleanup enabled or disabled
   ;; by default.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."


  (setq make-backup-files nil) ; stop creating backup~ files
  (setq auto-save-default nil) ; stop creating #autosave# files
  (setq create-lockfiles nil)
  (add-hook 'text-mode-hook #'visual-line-mode)
  (autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
  (autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
  (add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\)\\'" . sml-mode))

  (defun describe-char-at-click (click)
    "Show description of the character at the position you click on.
Similar to the C-u version of `what-cursor-position` but for a clicked position."
    (interactive "e")
    (let* ((posn (event-start click))
           (window (posn-window posn))
           (pos (posn-point posn)))
      (with-selected-window window
        (goto-char pos)
        (describe-char pos))))

  ;; Bind the function to a key
  (spacemacs/set-leader-keys "hdc" 'describe-char-at-click)

  (require 'org-roam-export)

  ;; ============================================================
  ;; Book Notes / Reading Session System - Variable (must be before functions)
  ;; ============================================================
  (defvar my/reading-current-book nil
    "Current book node ID for reading session.")

  (with-eval-after-load 'org-roam
    (setq org-roam-mode-sections
          (list #'org-roam-backlinks-section
                #'org-roam-reflinks-section
                ;; #'org-roam-unlinked-references-section
                ))
    (add-hook 'logseq-org-roam-updated-hook #'org-roam-db-sync)

    ;; ============================================================
    ;; Book Notes / Reading Session System - Functions
    ;; ============================================================

    (defun my/reading-start-session ()
      "Start a reading session by selecting or creating a book."
      (interactive)
      (let ((node (org-roam-node-read nil
                                      (lambda (node)
                                        (member "book" (org-roam-node-tags node)))
                                      nil nil "Select book: ")))
        (if node
            (progn
              (setq my/reading-current-book (org-roam-node-id node))
              (message "Reading session started: %s (ID: %s)"
                       (org-roam-node-title node)
                       my/reading-current-book))
          (message "No book selected."))))

    (defun my/reading-end-session ()
      "End the current reading session."
      (interactive)
      (setq my/reading-current-book nil)
      (message "Reading session ended."))

    (defun my/reading-current-book-title ()
      "Get the title of the current book, or nil."
      (when my/reading-current-book
        (org-roam-node-title (org-roam-node-from-id my/reading-current-book))))

    (defun my/reading-book-link-string ()
      "Return a link string to the current book, or empty string."
      (if my/reading-current-book
          (format "Source: [[id:%s][%s]]\n"
                  my/reading-current-book
                  (my/reading-current-book-title))
        ""))

    (defun my/reading-insert-book-link ()
      "Insert a link to the current book at point."
      (interactive)
      (let ((link (my/reading-book-link-string)))
        (if (string-empty-p link)
            (message "No reading session active.")
          (insert link))))

    ;; Capture templates for books and notes
    (add-to-list 'org-roam-capture-templates
                 `("b" "Book" plain "%?"
                   :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                                      ,(concat ":PROPERTIES:\n"
                                               ":ID: %(org-id-new)\n"
                                               ":AUTHOR: %^{Author}\n"
                                               ":YEAR: %^{Year}\n"
                                               ":TYPE: %^{Type|book|article|video|paper|podcast}\n"
                                               ":STATUS: %^{Status|reading|to-read|completed|abandoned}\n"
                                               ":DATE_STARTED: %^{Date started (empty if not started)}\n"
                                               ":DATE_FINISHED: \n"
                                               ":RATING: \n"
                                               ":GENRE: %^{Genre (optional)}\n"
                                               ":END:\n"
                                               "#+title: ${title}\n"
                                               "#+filetags: :book:\n\n"
                                               ))
                   :unnarrowed t))

    (add-to-list 'org-roam-capture-templates
                 `("n" "Note (linked to current book)" plain "%?"
                   :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                                      ":PROPERTIES:\n:ID: %(org-id-new)\n:END:\n#+title: ${title}\n#+filetags: :note:\n\n%(my/reading-book-link-string)")
                   :unnarrowed t))

    ;; Dynamic block for reading list table
    (defun my/reading-list-get-books ()
      "Get all org-roam nodes with :book: tag and their properties."
      (let ((nodes (seq-filter
                    (lambda (node)
                      (member "book" (org-roam-node-tags node)))
                    (org-roam-node-list))))
        (mapcar (lambda (node)
                  (let* ((file (org-roam-node-file node))
                         (props (with-temp-buffer
                                  (insert-file-contents file)
                                  (org-mode)
                                  (org-element-map (org-element-parse-buffer) 'node-property
                                    (lambda (p)
                                      (cons (org-element-property :key p)
                                            (org-element-property :value p)))))))
                    (list :title (org-roam-node-title node)
                          :id (org-roam-node-id node)
                          :author (or (cdr (assoc "AUTHOR" props)) "")
                          :year (or (cdr (assoc "YEAR" props)) "")
                          :type (or (cdr (assoc "TYPE" props)) "")
                          :status (or (cdr (assoc "STATUS" props)) "")
                          :started (or (cdr (assoc "DATE_STARTED" props)) "")
                          :finished (or (cdr (assoc "DATE_FINISHED" props)) "")
                          :rating (or (cdr (assoc "RATING" props)) "")
                          :genre (or (cdr (assoc "GENRE" props)) ""))))
                nodes)))

    (defun org-dblock-write:reading-list (params)
      "Generate a table of all books from org-roam.
Optional PARAMS:
  :status - filter by status (e.g., \"reading\", \"completed\")
  :type - filter by type (e.g., \"book\", \"article\")"
      (let* ((status-filter (plist-get params :status))
             (type-filter (plist-get params :type))
             (books (my/reading-list-get-books))
             (filtered (seq-filter
                        (lambda (book)
                          (and (or (null status-filter)
                                   (string= (plist-get book :status) status-filter))
                               (or (null type-filter)
                                   (string= (plist-get book :type) type-filter))))
                        books)))
        (insert "| Title | Author | Type | Status | Started | Finished | Rating | Genre |\n")
        (insert "|-------|--------|------|--------|---------|----------|--------|-------|\n")
        (dolist (book filtered)
          (insert (format "| [[id:%s][%s]] | %s | %s | %s | %s | %s | %s | %s |\n"
                          (plist-get book :id)
                          (plist-get book :title)
                          (plist-get book :author)
                          (plist-get book :type)
                          (plist-get book :status)
                          (plist-get book :started)
                          (plist-get book :finished)
                          (plist-get book :rating)
                          (plist-get book :genre))))
        (org-table-align)))

    ;; ============================================================
    ;; End Book Notes / Reading Session System (org-roam parts)
    ;; ============================================================
    )

  ;; Book Notes / Reading Session - Interactive commands (outside with-eval-after-load for helm visibility)
  (defun my/reading-capture-note ()
    "Capture a note linked to the current book."
    (interactive)
    (if my/reading-current-book
        (org-roam-capture nil "n")
      (message "No reading session active. Start one with SPC o r s")))

  (defun my/reading-capture-book ()
    "Capture a new book entry."
    (interactive)
    (org-roam-capture nil "b"))

  (defun my/reading-find-book ()
    "Find a book node."
    (interactive)
    (org-roam-node-find nil nil
                        (lambda (node) (member "book" (org-roam-node-tags node)))))

  ;; Book Notes / Reading Session keybindings
  (spacemacs/declare-prefix "or" "roam/reading")
  (spacemacs/set-leader-keys
    "ors" 'my/reading-start-session
    "ore" 'my/reading-end-session
    "orn" 'my/reading-capture-note
    "orb" 'my/reading-capture-book
    "orf" 'my/reading-find-book)

  (with-eval-after-load 'org
    (require 'org-agenda)
    (org-super-agenda-mode)
    (org-defkey org-mode-map [(meta return)] 'org-meta-return)  ;; The actual fix

    (setq org-agenda-files
          (seq-filter (lambda(x) (not (string-match "/notes/"(file-name-directory x))))
                      (directory-files-recursively "~/Org" "\\.org$")
                      ))
    (setq org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t%-6e% s")
                                     (todo . " %i %-12:c %-6e")
                                     (tags . " %i %-12:c %-6e")
                                     (search . " %i %-12:c%-6e")))
    (setq org-todo-keywords
          '((sequence "TODO" "|" "DONE")))








    (setq org-agenda-window-setup 'current-window)

    ;; ============================================================
    ;; Hierarchical Journal System (Trilium-style)
    ;; ============================================================

    (defvar my/journal-directory (expand-file-name "journal/" org-directory)
      "Directory for hierarchical journal files.")

    (defvar my/journal-template-directory (expand-file-name "templates/" my/journal-directory)
      "Directory for journal templates.")

    ;; --- Date/Week Calculation Helpers ---

    (defun my/journal-file-for-date (date)
      "Return the journal file path for DATE (a time value)."
      (expand-file-name
       (format "%s.org" (format-time-string "%Y" date))
       my/journal-directory))

    (defun my/journal-current-year-file ()
      "Return the journal file path for the current year.
Creates the file with proper header if it doesn't exist."
      (my/journal-ensure-file (current-time)))

    (defun my/journal-week-number (date)
      "Return ISO week number for DATE."
      (string-to-number (format-time-string "%V" date)))

    (defun my/journal-week-start (date)
      "Return the Monday of the week containing DATE."
      (let* ((dow (string-to-number (format-time-string "%u" date))) ; 1=Mon, 7=Sun
             (days-since-monday (1- dow)))
        (time-subtract date (days-to-time days-since-monday))))

    (defun my/journal-week-end (date)
      "Return the Sunday of the week containing DATE."
      (let ((monday (my/journal-week-start date)))
        (time-add monday (days-to-time 6))))

    (defun my/journal-week-date-range (date)
      "Return a string like 'Jan 6 - Jan 12' for the week containing DATE."
      (let ((start (my/journal-week-start date))
            (end (my/journal-week-end date)))
        (format "%s - %s"
                (format-time-string "%b %-d" start)
                (format-time-string "%b %-d" end))))

    (defun my/journal-month-for-week (date)
      "Return which month the week belongs to (by Thursday, per ISO 8601)."
      (let* ((monday (my/journal-week-start date))
             (thursday (time-add monday (days-to-time 3))))
        (format-time-string "%B" thursday)))

    (defun my/journal-year-for-week (date)
      "Return which year the week belongs to (by Thursday, per ISO 8601)."
      (let* ((monday (my/journal-week-start date))
             (thursday (time-add monday (days-to-time 3))))
        (string-to-number (format-time-string "%Y" thursday))))

    (defun my/journal-month-year-for-week (date)
      "Return 'Month Year' string for the week containing DATE (by Thursday)."
      (let* ((monday (my/journal-week-start date))
             (thursday (time-add monday (days-to-time 3))))
        (format-time-string "%B %Y" thursday)))

    ;; --- Template Insertion ---

    (defun my/journal-read-template (template-name)
      "Read the contents of TEMPLATE-NAME from the templates directory."
      (let ((template-file (expand-file-name
                            (concat template-name ".org")
                            my/journal-template-directory)))
        (if (file-exists-p template-file)
            (with-temp-buffer
              (insert-file-contents template-file)
              (buffer-string))
          (format "Template '%s' not found at %s" template-name template-file))))

    (defun my/journal-insert-daily-template ()
      "Insert the daily review template at point."
      (interactive)
      (insert (my/journal-read-template "daily-review")))

    (defun my/journal-insert-weekly-template ()
      "Insert the weekly review template at point."
      (interactive)
      (insert (my/journal-read-template "weekly-review")))

    (defun my/journal-insert-monthly-template ()
      "Insert the monthly review template at point."
      (interactive)
      (insert (my/journal-read-template "monthly-review")))

    ;; --- Ensure File and Structure ---

    (defun my/journal-ensure-file (date)
      "Ensure the journal file for DATE's year exists with proper header."
      (let ((file (my/journal-file-for-date date))
            (year (format-time-string "%Y" date)))
        (unless (file-exists-p file)
          (with-temp-file file
            (insert (format "#+TITLE: Journal %s\n#+STARTUP: overview\n\n" year))))
        file))

    (defun my/journal-find-or-create-heading (level title &optional properties)
      "Find or create a heading with TITLE at LEVEL. Return point at heading.
PROPERTIES is an alist of property names and values to set."
      (let ((marker (org-find-exact-headline-in-buffer title)))
        (if marker
            (goto-char marker)
          ;; Need to create the heading - go to end of buffer or current subtree
          (goto-char (point-max))
          (unless (bolp) (insert "\n"))
          (insert (make-string level ?*) " " title "\n")
          (forward-line -1)
          (when properties
            (org-set-property (car (car properties)) (cdr (car properties)))
            (dolist (prop (cdr properties))
              (org-set-property (car prop) (cdr prop)))))
        (point)))

    (defun my/journal-ensure-month (date)
      "Ensure the month heading exists for DATE. Return point at heading."
      (let* ((month-year (my/journal-month-year-for-week date))
             (month-name (my/journal-month-for-week date))
             (year (my/journal-year-for-week date)))
        (goto-char (point-min))
        (let ((found (org-find-exact-headline-in-buffer (format "%s %d" month-name year))))
          (if found
              (goto-char found)
            ;; Insert month in chronological order
            (my/journal-insert-month-heading month-name year)))
        (point)))

    (defun my/journal-month-to-number (month-name)
      "Convert MONTH-NAME (e.g., 'January') to number (1-12)."
      (cdr (assoc month-name
                  '(("January" . 1) ("February" . 2) ("March" . 3)
                    ("April" . 4) ("May" . 5) ("June" . 6)
                    ("July" . 7) ("August" . 8) ("September" . 9)
                    ("October" . 10) ("November" . 11) ("December" . 12)))))

    (defun my/journal-insert-month-heading (month-name year)
      "Insert month heading in chronological order with Todos and Monthly Review."
      (let ((target-month-num (my/journal-month-to-number month-name))
            (insert-pos nil))
        (goto-char (point-min))
        ;; Find the right position to insert
        (while (and (not insert-pos)
                    (re-search-forward "^\\* \\([A-Za-z]+\\) \\([0-9]+\\)$" nil t))
          (let* ((found-month (match-string 1))
                 (found-year (string-to-number (match-string 2)))
                 (found-month-num (my/journal-month-to-number found-month)))
            (when (or (> found-year year)
                      (and (= found-year year) (> found-month-num target-month-num)))
              (setq insert-pos (line-beginning-position)))))
        (if insert-pos
            (goto-char insert-pos)
          (goto-char (point-max))
          (unless (bolp) (insert "\n")))
        (insert (format "* %s \n" month-name ))
        (insert ":PROPERTIES:\n")
        (insert (format ":DATE: %s\n"
                        (format-time-string "%Y-%m")))
        (insert ":END:\n")
        (insert "** Monthly Review\n")
        (my/journal-insert-monthly-template)
        (insert "** Todos\n")
        (re-search-backward (format "^\\* %s %d$" month-name year) nil t)))

    (defun my/journal-ensure-week (date)
      "Ensure the week heading exists for DATE under the correct month."
      (my/journal-ensure-month date)
      (let* ((week-num (my/journal-week-number date))
             (week-range (my/journal-week-date-range date))
             (week-title (format "Week %d (%s)" week-num week-range))
             (month-end (save-excursion (org-end-of-subtree t) (point))))
        ;; Search within the month subtree
        (if (re-search-forward (format "^\\*\\* Week %d " week-num) month-end t)
            (beginning-of-line)
          ;; Insert week in chronological order within month
          (my/journal-insert-week-heading week-num week-range month-end))
        (point)))

    (defun my/journal-insert-week-heading (week-num week-range month-end)
      "Insert week heading in chronological order within month."
      (let ((insert-pos nil))
        (save-excursion
          (org-back-to-heading t)
          (forward-line 1)
          ;; Skip past Todos, Monthly Review headings
          (while (and (< (point) month-end)
                      (not insert-pos)
                      (re-search-forward "^\\*\\* " month-end t))
            (let ((heading (buffer-substring-no-properties
                            (point) (line-end-position))))
              (cond
               ;; Skip Todos and Monthly Review - they come before weeks
               ((or (string-prefix-p "Todos" heading)
                    (string-prefix-p "Monthly Review" heading))
                (forward-line 1))
               ;; Found a week heading
               ((string-match "^Week \\([0-9]+\\)" heading)
                (let ((found-week (string-to-number (match-string 1 heading))))
                  (if (> found-week week-num)
                      (setq insert-pos (line-beginning-position))
                    (forward-line 1))))
               ;; Some other heading - insert before it
               (t (setq insert-pos (line-beginning-position)))))))
        (if insert-pos
            (goto-char insert-pos)
          (goto-char month-end)
          (unless (bolp) (insert "\n")))
        (insert (format "** Week %d (%s)\n" week-num week-range))
        (insert ":PROPERTIES:\n")
        (insert (format ":WEEK_NUM: %d\n" week-num))
        (insert (format ":DATE: %s\n"
                        (format-time-string "%G-W%V")))
        (insert ":END:\n")
        (insert "*** Todos\n")
        (insert "*** Weekly Review\n")
        (my/journal-insert-weekly-template)
        (re-search-backward (format "^\\*\\* Week %d" week-num) nil t)))

    (defun my/journal-ensure-day (date)
      "Ensure the day heading exists for DATE under the correct week."
      (my/journal-ensure-week date)
      (let* ((date-str (format-time-string "%Y-%m-%d" date))
             (day-name (format-time-string "%A" date))
             (day-title (format "%s %s" date-str day-name))
             (week-end (save-excursion (org-end-of-subtree t) (point))))
        ;; Search within the week subtree
        (if (re-search-forward (format "^\\*\\*\\* %s" (regexp-quote date-str)) week-end t)
            (beginning-of-line)
          ;; Insert day
          (my/journal-insert-day-heading date date-str day-name week-end))
        (point)))

    (defun my/journal-insert-day-heading (date date-str day-name week-end)
      "Insert day heading in chronological order within week."
      (let ((insert-pos nil)
            (target-time (float-time date)))
        (save-excursion
          (org-back-to-heading t)
          (forward-line 1)
          ;; Skip past Todos, Weekly Review headings
          (while (and (< (point) week-end)
                      (not insert-pos)
                      (re-search-forward "^\\*\\*\\* " week-end t))
            (let ((heading (buffer-substring-no-properties
                            (point) (line-end-position))))
              (cond
               ((or (string-prefix-p "Todos" heading)
                    (string-prefix-p "Weekly Review" heading))
                (forward-line 1))
               ((string-match "^\\([0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}\\)" heading)
                (let* ((found-date-str (match-string 1 heading))
                       (found-time (float-time (date-to-time found-date-str))))
                  (if (> found-time target-time)
                      (setq insert-pos (line-beginning-position))
                    (org-end-of-subtree t)
                    (forward-line 1))))
               (t (setq insert-pos (line-beginning-position)))))))
        (if insert-pos
            (goto-char insert-pos)
          (goto-char week-end)
          (unless (bolp) (insert "\n")))
        (insert (format "*** %s %s\n" date-str day-name))
        (insert ":PROPERTIES:\n")
        (insert (format ":DATE: %s\n" date-str))
        (insert ":END:\n")
        (insert "**** Todos\n")
        (insert "**** Daily Review\n")
        (my/journal-insert-daily-template)
        (insert "**** Notes\n")
        (re-search-backward (format "^\\*\\*\\* %s" (regexp-quote date-str)) nil t)))

    (defun my/journal-ensure-hierarchy (date)
      "Create the full hierarchy for DATE: Year > Month > Week > Day."
      (let ((file (my/journal-ensure-file date)))
        (find-file file)
        (my/journal-ensure-day date)))

    ;; --- Navigation Functions ---

    (defun my/journal-goto-today ()
      "Jump to today's journal entry, creating it if necessary."
      (interactive)
      (my/journal-ensure-hierarchy (current-time))
      (org-show-entry)
      (org-show-children))

    (defun my/journal-ensure-day-in-buffer (date)
      "Ensure the day heading for DATE exists in the current buffer.
For use with capture templates where the file is already visited."
      (goto-char (point-min))
      (my/journal-ensure-day date))

    (defun my/journal-goto-today-heading ()
      "Navigate to today's day heading (for capture templates).
Assumes the correct file is already visited."
      (my/journal-ensure-day-in-buffer (current-time))
      (org-end-of-subtree t))

    (defun my/journal-goto-today-todos ()
      "Navigate to today's Todos section (for capture templates).
Assumes the correct file is already visited."
      (my/journal-ensure-day-in-buffer (current-time))
      ;; Point should be at day heading. Find the Todos subheading.
      (let ((day-end (save-excursion (org-end-of-subtree t) (point))))
        (when (re-search-forward "^\\*\\*\\*\\* Todos" day-end t)
          )))

    (defun my/journal-goto-date (date)
      "Jump to a specific DATE's journal entry using calendar picker.
When called interactively, prompts with calendar."
      (interactive (list (org-read-date nil t nil "Go to date: ")))
      (my/journal-ensure-hierarchy date)
      (org-show-entry)
      (org-show-children))

    (defun my/journal-goto-week (&optional date)
      "Jump to the week heading for DATE (defaults to current week)."
      (interactive)
      (let* ((target-date (or date (current-time)))
             (file (my/journal-ensure-file target-date)))
        (find-file file)
        (my/journal-ensure-week target-date)
        (org-show-entry)
        (org-show-children)))

    (defun my/journal-goto-month (&optional date)
      "Jump to the month heading for DATE (defaults to current month)."
      (interactive)
      (let* ((target-date (or date (current-time)))
             (file (my/journal-ensure-file target-date)))
        (find-file file)
        (my/journal-ensure-month target-date)
        (org-show-entry)
        (org-show-children)))

    ;; --- Refile Helpers ---

    (defun my/journal-refile-to-day ()
      "Refile current heading to a day's Todos section."
      (interactive)
      (let* ((date (org-read-date nil t nil "Refile to day: "))
             (file (my/journal-file-for-date date))
             (date-str (format-time-string "%Y-%m-%d" date)))
        (unless (file-exists-p file)
          (my/journal-ensure-hierarchy date))
        (let ((rfloc (save-excursion
                       (find-file file)
                       (goto-char (point-min))
                       (when (re-search-forward
                              (format "^\\*\\*\\* %s.*\n.*\n.*\n\\*\\*\\*\\* Todos$"
                                      (regexp-quote date-str)) nil t)
                         (list "Todos" file nil (point))))))
          (if rfloc
              (org-refile nil nil rfloc)
            (message "Could not find Todos section for %s" date-str)))))

    (defun my/journal-refile-to-week ()
      "Refile current heading to a week's Todos section."
      (interactive)
      (let* ((date (org-read-date nil t nil "Refile to week of: "))
             (file (my/journal-file-for-date date))
             (week-num (my/journal-week-number date)))
        (unless (file-exists-p file)
          (my/journal-ensure-week date))
        (let ((rfloc (save-excursion
                       (find-file file)
                       (goto-char (point-min))
                       (when (re-search-forward
                              (format "^\\*\\* Week %d.*\n.*\n.*\n\\*\\*\\* Todos$" week-num) nil t)
                         (list "Todos" file nil (point))))))
          (if rfloc
              (org-refile nil nil rfloc)
            (message "Could not find Todos section for week %d" week-num)))))

    (defun my/journal-refile-to-month ()
      "Refile current heading to a month's Todos section."
      (interactive)
      (let* ((date (org-read-date nil t nil "Refile to month: "))
             (file (my/journal-file-for-date date))
             (month-name (my/journal-month-for-week date))
             (year (my/journal-year-for-week date)))
        (unless (file-exists-p file)
          (my/journal-ensure-month date))
        ;; Ensure the month has a Todos heading
        (save-excursion
          (find-file file)
          (goto-char (point-min))
          (when (re-search-forward (format "^\\* %s %d$" month-name year) nil t)
            (let ((month-end (save-excursion (org-end-of-subtree t) (point))))
              (unless (re-search-forward "^\\*\\* Todos$" month-end t)
                (forward-line 1)
                (insert "** Todos\n")))))
        (let ((rfloc (save-excursion
                       (find-file file)
                       (goto-char (point-min))
                       (when (re-search-forward
                              (format "^\\* %s %d\n\\*\\* Todos$" month-name year) nil t)
                         (list "Todos" file nil (point))))))
          (if rfloc
              (org-refile nil nil rfloc)
            (message "Could not find Todos section for %s %d" month-name year)))))

    ;; --- Journal Todo Views (org-ql based) ---

    (defun my/journal-show-today-todos ()
      "Show today's journal todos using org-ql."
      (interactive)
      (let* ((date-str (format-time-string "%Y-%m-%d"))
             (file (my/journal-current-year-file)))
        (if (file-exists-p file)
            (org-ql-search (list file)
              `(and (todo)
                    (ancestors (heading-regexp ,(concat "^" (regexp-quote date-str)))))
              :title (format "Today's Todos (%s)" date-str)
              :super-groups '((:auto-parent t)))
          (message "No journal file found"))))

    (defun my/journal-show-week-todos ()
      "Show this week's journal todos using org-ql."
      (interactive)
      (let* ((week-num (my/journal-week-number (current-time)))
             (file (my/journal-current-year-file)))
        (if (file-exists-p file)
            (org-ql-search (list file)
              `(and (todo)
                    (ancestors (property "WEEK_NUM" ,(number-to-string week-num))))
              :title (format "Week %d Todos" week-num)
              :super-groups '((:auto-parent t)))
          (message "No journal file found"))))

    (defun my/journal-show-month-todos ()
      "Show this month's journal todos using org-ql."
      (interactive)
      (let* ((month-name (format-time-string "%B"))
             (year (format-time-string "%Y"))
             (file (my/journal-current-year-file)))
        (if (file-exists-p file)
            (org-ql-search (list file)
              `(and (todo)
                    (ancestors (heading-regexp ,(concat "^" month-name " " year))))
              :title (format "%s %s Todos" month-name year)
              :super-groups '((:auto-parent t)))
          (message "No journal file found"))))

    (defun my/journal-show-yesterday-todos ()
      "Show yesterday's incomplete todos using org-ql."
      (interactive)
      (let* ((yesterday (time-subtract (current-time) (days-to-time 1)))
             (date-str (format-time-string "%Y-%m-%d" yesterday))
             (file (my/journal-file-for-date yesterday)))
        (if (file-exists-p file)
            (org-ql-search (list file)
              `(and (todo)
                    (ancestors (heading-regexp ,(concat "^" (regexp-quote date-str)))))
              :title (format "Yesterday's Incomplete (%s)" date-str)
              :super-groups '((:auto-parent t)))
          (message "No journal file found for %s" date-str))))

    ;; --- Capture Templates for Journal ---

    (require 'org-capture)
    (setq org-capture-templates
          `(("j" "Journal")
            ("jd" "Day Note" entry
             (file+function my/journal-current-year-file my/journal-goto-today-heading)
             "***** %? :note:\n:PROPERTIES:\n:CREATED: %U\n:END:\n"
             :empty-lines 1)
            ("jm" "Meeting" entry
             (file+function my/journal-current-year-file my/journal-goto-today-heading)
             "***** %? :meeting:\n:PROPERTIES:\n:CREATED: %U\n:END:\n"
             :empty-lines 1)
            ("jT" "Therapy" entry
             (file+function my/journal-current-year-file my/journal-goto-today-heading)
             "* %? :therapy:\n:PROPERTIES:\n:CREATED: %U\n:END:\n"
             :empty-lines 1)
            ("jt" "Today Todo" entry
             (file+function my/journal-current-year-file my/journal-goto-today-todos)
             "* TODO %?\n"
             :empty-lines 0)))

    ;; --- Agenda Views for Journal ---

    ;; Add journal directory to agenda files
    (add-to-list 'org-agenda-files my/journal-directory)

    ;; Journal agenda views
    (add-to-list 'org-agenda-custom-commands
                 '("j" . "Journal"))

    ;; --- Keybindings ---

    (spacemacs/declare-prefix "oj" "journal")
    ;; Navigation
    (spacemacs/set-leader-keys "ojt" 'my/journal-goto-today)
    (spacemacs/set-leader-keys "ojd" 'my/journal-goto-date)
    (spacemacs/set-leader-keys "ojw" 'my/journal-goto-week)
    (spacemacs/set-leader-keys "ojm" 'my/journal-goto-month)
    ;; Todo views (org-ql)
    (spacemacs/declare-prefix "ojv" "view todos")
    (spacemacs/set-leader-keys "ojvt" 'my/journal-show-today-todos)
    (spacemacs/set-leader-keys "ojvw" 'my/journal-show-week-todos)
    (spacemacs/set-leader-keys "ojvm" 'my/journal-show-month-todos)
    (spacemacs/set-leader-keys "ojvy" 'my/journal-show-yesterday-todos)

    ;; Refile helpers for org-mode
    (spacemacs/declare-prefix-for-mode 'org-mode "mj" "journal")
    (spacemacs/declare-prefix-for-mode 'org-mode "mjr" "refile")
    (spacemacs/set-leader-keys-for-major-mode 'org-mode
      "jrd" 'my/journal-refile-to-day
      "jrw" 'my/journal-refile-to-week
      "jrm" 'my/journal-refile-to-month)

    ;; ============================================================
    ;; End Hierarchical Journal System
    ;; ============================================================
    )

  (indent-guide-global-mode)
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue?\\'" . web-mode))
  ;; (add-to-list 'web-mode-content-types-alist '("vue". "\\.vue?\\'"))


  (spacemacs/set-leader-keys "ori" 'org-roam-jump-to-index)


  ;; use the locally installed eslint
  (defun configure-flycheck-web-mode ()
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (eslint (and root
                        (expand-file-name "node_modules/.bin/eslint"
                                          root))))
      (when (and eslint (file-executable-p eslint))
        (setq-local flycheck-javascript-eslint-executable-executable eslint)))
    )
  ;; (add-hook 'web-mode-hook
  ;;           #'configure-flycheck-web-mode)
  ;; (add-hook 'js2-mode-hook
  ;;           #'configure-flycheck-web-mode)
  (use-package org-super-agenda)
  (with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.node_modules\\'")
    (setq lsp-file-watch-threshold 5000)
    ;; (setq lsp-enable-file-watchers nil)
    )
  (with-eval-after-load 'undo-tree
    (setq undo-tree-auto-save-history nil))

  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    )
  (add-hook 'web-mode-hook  'my-web-mode-hook)
  (keychain-refresh-environment)
  ;; (fset 'vue-wrap-intl
  ;;    (kmacro-lambda-form [?w ?v ?e ?s ?\" ?v ?f ?\" ?s ?\) ?i ?$ ?t escape ?h ?v ?f ?\) ?s ?\} ?v ?f ?\} ?s ?\} escape] 0 "%d"))


  (define-derived-mode astro-mode web-mode "astro")
  (setq auto-mode-alist
        (append '((".*\\.astro\\'" . astro-mode))
                auto-mode-alist))

  (with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-language-id-configuration
                 '(astro-mode . "astro"))

    (lsp-register-client
     (make-lsp-client :new-connection (lsp-stdio-connection '("astro-ls" "--stdio"))
                      :activation-fn (lsp-activate-on "astro")
                      :server-id 'astro-ls)))

  (setq evil-want-C-i-jump 't)
  (spacemacs/set-leader-keys "C-SPC" 'company-complete)
  (add-to-list 'purpose-action-function-ignore-buffer-names "\\*org-roam\\*")
  (advice-add #'org-roam-fontify-like-in-org-mode :around (lambda (fn &rest args) (save-excursion (apply fn args))))
  (add-to-list 'display-buffer-alist
               '("\\*org-roam\\*"
                 (display-buffer-in-side-window)
                 (side . right)
                 (slot . 0)
                 (window-width . 0.33)
                 (window-parameters . ((no-other-window . t)
                                       (no-delete-other-windows . t)))))
  (setq org-roam-node-display-template
        (concat "${title:*} "
                (propertize "${tags:10}" 'face 'org-tag)))
  (setq org-roam-completion-everywhere t)
  (add-hook 'org-roam-mode-hook #'turn-on-visual-line-mode)
  (advice-add #'org-roam-link-follow-link :filter-args #'org-roam-link-follow-link-with-description-a)
  (advice-add #'org-roam-link-replace-at-point :override #'org-roam-link-replace-at-point-a)
  (defun my/preview-fetcher ()
    (let* ((elem (org-element-context))
           (parent (org-element-property :parent elem)))
      ;; TODO: alt handling for non-paragraph elements
      (string-trim-right (buffer-substring-no-properties
                          (org-element-property :begin parent)
                          (org-element-property :end parent)))))

  (setq org-roam-preview-function #'my/preview-fetcher)
  (defun org-replace-link-by-link-description ()
    "Replace an org link by its description or if empty its address"
    (interactive)
    (if (org-in-regexp org-link-bracket-re 1)
        (save-excursion
          (let ((remove (list (match-beginning 0) (match-end 0)))
                (description
                 (if (match-end 2)
                     (org-match-string-no-properties 2)
                   (org-match-string-no-properties 1))))
            (apply 'delete-region remove)
            (insert description)))))
  (with-eval-after-load 'company
    ;; disable inline previews
    (delq 'company-preview-if-just-one-frontend company-frontends))

  (with-eval-after-load 'copilot
    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "C-TAB") 'copilot-accept-completion-by-word)
    (define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion-by-word))

  ;; (add-hook 'prog-mode-hook 'copilot-mode)
  (setq
   split-width-threshold 0
   split-height-threshold nil)
  (setq magit-show-long-lines-warning nil)
  (custom-set-faces
   '(company-tooltip-common
     ((t (:inherit company-tooltip :weight bold :underline nil))))
   '(company-tooltip-common-selection
     ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
   ;; Make org-roam buffer titles look like links
   '(org-roam-title
     ((t (:inherit link :weight bold)))))
  (defun trip-agenda-today ()
    "Show agenda for today using only the current buffer, with time grid."
    (interactive)
    (let ((org-agenda-files (list (buffer-file-name))))
      (org-agenda-list nil (org-read-date nil nil nil "Start date:") 1)))

  (defun my/insert-agenda-view (date)
    "Insert an agenda-like view for DATE in the current buffer."
    (interactive "sDate (e.g. 2025-05-01): ")
    (insert (format "* %s\n#+BEGIN_SRC emacs-lisp\n(org-agenda-list nil \"%s\" 1)\n#+END_SRC\n"
                    date date)))

  (org-add-link-type "agenda-block" 'ignore
                     (lambda (path desc backend)
                       (when (eq backend 'html)
                         (format "<!-- Agenda for %s -->" path))))

  (defun org-dblock-write:agenda-block (params)
    "Insert a static agenda view for a trip itinerary.
Supports :start (date) and :span (number of days or symbols like 'week)."
    (let* ((date (or (plist-get params :start)

                     (format-time-string "%Y-%m-%d")))
           (span (or (plist-get params :span) 1)) ; number of days or 'week/'month
           (org-agenda-span span)
           (org-agenda-show-log nil)
           (org-agenda-use-time-grid t)
           (org-agenda-start-on-weekday nil)
           (org-agenda-start-day date)
           (org-agenda-prefix-format " %?-12t ")
           (org-agenda-files (list (buffer-file-name)))
           (output-buffer (get-buffer-create "*org-agenda-static*")))
      (with-current-buffer output-buffer
        (erase-buffer))
      (org-agenda-list nil date span)
      (let ((content (with-current-buffer "*Org Agenda*"
                       (buffer-substring-no-properties (point-min) (point-max)))))
        (insert "\n#+BEGIN_EXAMPLE\n")
        (insert content)
        (insert "#+END_EXAMPLE\n"))))


  (defun my/insert-multi-day-itinerary (start-date num-days)
    (interactive "sStart date (yyyy-mm-dd): \nnNumber of days: ")
    (let ((date (date-to-time start-date)))
      (dotimes (i num-days)
        (let ((d (format-time-string "%Y-%m-%d" (time-add date (days-to-time i)))))
          (insert (format "* %s\n#+BEGIN: agenda-block :day \"%s\"\n#+END:\n\n"
                          d d))))))


  ;; ;; URL of the caldav server
  ;; (setq org-caldav-url "https://cloud.508.dev/remote.php/dav/calendars/caleb")

  ;; ;; calendar ID on server
  ;; (setq org-caldav-calendar-id "orgmodenext")

  ;; ;; Org filename where new entries from calendar stored
  ;; (setq org-caldav-inbox "~/Org/calendar.org")

  ;; ;; Additional Org files to check for calendar events
  ;; (setq org-caldav-files
  ;;       (append
  ;;        (mapcar #'expand-file-name
  ;;                '("~/Org/inbox.org"
  ;;                  "~/Org/projects.org"
  ;;                  "~/Org/trips.org"
  ;;                  "~/Org/work.org"))
  ;;        ))

  ;; (setq org-icalendar-include-todo 'all
  ;;       org-caldav-sync-todo t)


  ;; (setq org-caldav-todo-priority '((0 nil) (1 "A") (3 "B") (5 "C") (7 "D")))

  ;; Usually a good idea to set the timezone manually
  ;; (setq org-icalendar-timezone "Asia/Taipei")


  (with-eval-after-load 'org-ql-view
    (push `("Meetings"
            :buffers-files ,(directory-files-recursively
                             (expand-file-name "notes/daily" org-directory)
                             "\\.org$")
            :query (and (tags "meeting")
                        (not (ancestors (tags "meeting"))))
            :title "Meetings"
            :sort (date)
            :super-groups ((:auto-category t))
            )

          org-ql-views))
  (use-package neoscroll
    :config
    (setq neoscroll-easing 'cubic)
    (setq neoscroll-scroll-duration 0.10)
    (neoscroll-mode 1))
  (with-eval-after-load 'indent-guide
    (dolist (m '(helm-major-mode helm-mode))
      (add-to-list 'indent-guide-inhibit-modes m)))
  )
(defun dotspacemacs/emacs-custom-settings ()
  )
