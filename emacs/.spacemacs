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
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(lua
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     emacs-lisp
     helm
     lsp
     multiple-cursors
     treemacs
     rust
     yaml
     go
     ;; (auto-completion :variables
     ;;                  auto-completion-return-key-behavior 'nil
     ;;                  auto-completion-tab-key-behavior 'cycle
     ;;                  auto-completion-enable-sort-by-usage t
     ;;                  auto-completion-enable-help-tooltip 'manual
     ;;                  auto-completion-private-snippets-directory nil )
     better-defaults
     git
     markdown
     (org :variables
          org-directory "~/Dropbox/org"
          org-projectile-file "~/Dropbox/org/projects.org"
          org-enable-roam-support t
          org-enable-org-journal-support t
          org-roam-directory "~/Dropbox/org/notes/"
          org-roam-index-file "~/Dropbox/org/notes/20200526213916-index.org"
          org-default-notes-file (concat org-directory "/inbox.org")
          )
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
     (erc :variables
          erc-server-list
          '(("irc.freenode.net"
             :port "6697"
             :ssl t
             :nick "komali2"
             :password (password-store-get "freenode.net"))
            ))
     mu4e
     (vue :variables vue-backend 'lsp)
     (node :variables node-add-modules-path t)
     racket
     tern
     common-lisp
     colors
     react
     (elfeed :variables
             elfeed-feeds '("https://researchbuzz.me/feed/"
                            "http://n-gate.com/index.rss"
                            "https://mjtsai.com/blog/feed/"
                            "https://craphound.com/feed/"
                            "https://pluralistic.net/feed/"
                            "http://www.fudzilla.com/?format=feed"
                            "http://semiengineering.com/feed/"
                            "https://www.eff.org/rss/pressrelease"
                            "http://news.mit.edu/rss/topic/nanotech"
                            "http://news.mit.edu/rss/topic/electrical-engineering"
                            "http://www.pocketables.com/feed"
                            "https://www.quantamagazine.org/feed"
                            "https://www.sciencedaily.com/rss/computers_math/artificial_intelligence.xml"
                            "https://machinelearningmastery.com/blog/feed/"
                            "http://news.mit.edu/rss/topic/artificial-intelligence2"
                            "https://bair.berkeley.edu/blog/feed.xml"
                            "https://openai.com/blog/rss/"
                            "https://www.technologyreview.com/topic/artificial-intelligence/feed"
                            "https://www.jefftk.com/news.rss"
                             ))
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
                                      anki-editor)
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
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

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
   dotspacemacs-themes '(vscode-default-high-contrast
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator slant :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Fira Code"
                               :size 11.0
                               :weight normal
                               :width normal)

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
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

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
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

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
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
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
   dotspacemacs-line-numbers nil

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
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

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

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non nil. (default nil)
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
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."


;; Removed to try out new dotspacemacs-whitepsace-cleanup
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)
;; (setq org-directory "~/Dropbox/org")
;; (setq org-roam-directory "~/Dropbox/org/notes/")


(with-eval-after-load 'org
  (require 'org-agenda)
  (org-super-agenda-mode)
  (org-defkey org-mode-map [(meta return)] 'org-meta-return)  ;; The actual fix
  ;; (setq org-roam-index-file "~/Dropbox/org/notes/20200526213916-index.org")
  ;; (setq org-default-notes-file (concat org-directory "/inbox.org"))
  (setq org-agenda-files '("~/Dropbox/org/"))
  (setq org-todo-keywords
        '((sequence "TODO" "DOING" "WAITING" "|" "DONE")))
  (setq org-capture-templates
        `(("i" "inbox" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %?")
          ("m" "Meeting Notes" entry (file+olp+datetree ,(concat org-directory "/meeting_notes.org"))
           "* %?")
          ("r" "Roam Notes" entry (file+olp+datetree ,(concat org-directory "/notes/notes.org"))
           "* %?")
          ("w" "Work Todo" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %? :work:\n")
          ("u" "Curative Todo" entry (file+headline ,(concat org-directory "/curative.org") "Tasks")
           "* TODO %? \n")
          ("l" "Life Todo" entry (file ,(concat org-directory "/inbox.org"))
           "* TODO %? :life:\n")

          ))
  (setq org-columns-default-format "%40ITEM(Task) %Effort(EE){:} %CLOCKSUM(Time Spent) %SCHEDULED(Scheduled) %DEADLINE(Deadline)")


  (setq w-view
           `("ww" "Work"
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

  (setq curative-view
           `("wu" "Curative"
             (
              (agenda ""(
                         (org-super-agenda-groups
                          '((:discard (:not (:tag ("curative")))))
                          )
                         (org-agenda-span 'day)
                         (org-deadline-warning-days 365)))
              (tags-todo "curative"
                         ((org-agenda-overriding-header "All Curative")
                          (org-agenda-prefix-format "  %?-12t% s")
                          (org-agenda-files '("~/Dropbox/org/"))
                          (org-super-agenda-groups
                           '((:auto-property "CATEGORY")))
                          (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))))
              nil)))

  (setq gov-view
        `("g" "G0v"
          (
           (agenda ""(
                      (org-super-agenda-groups
                       '((:discard (:not (:tag ("g0v")))))
                       )
                      (org-agenda-span 'day)
                      (org-deadline-warning-days 365)))
           (tags-todo "g0v"
                      ((org-agenda-overriding-header "All G0v")
                       (org-agenda-prefix-format "  %?-12t% s")
                       (org-agenda-files '("~/Dropbox/org/"))
                       (org-super-agenda-groups
                        '((:auto-property "CATEGORY")))
                       (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))))
           nil)))

  ;; (setq d-view
  ;;       `("d" "Daily"
  ;;         (
  ;;          (agenda ""
  ;;                  (
  ;;                   (org-agenda-files '("~/Dropbox/org/"))
  ;;                   (org-agenda-span 'day)
  ;;                   (org-deadline-warning-days 365)
  ;;                   (org-super-agenda-groups
  ;;                    '((:name "Dailies"
  ;;                             :and (:tag ("daily")))
  ;;                      (:discard (:anything t)))))))))
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
                                 :and (:tag ("life")))
                          (:discard (:anything t))))))

              (todo "TODO"
                         ((org-agenda-overriding-header "")
                          (org-agenda-files '("~/Dropbox/org/"))
                          (org-super-agenda-groups
                           '((:name "Needs Filing"
                                    :and (:not(:tag ("life" "work" "project" "read"))))
                             (:discard (:anything t)))))
                          (org-agenda-sorting-strategy '(deadline-up priority-down tag-up)))
              (todo "TODO"
                    ((org-agenda-overriding-header "")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:name "Reading"
                               :and (:tag ("read")))
                        (:discard (:anything t)))))
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up)))

              (todo "TODO"
                    ((org-agenda-overriding-header "")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:name "All Life Todos"
                               :and (:tag ("life")))
                        (:discard (:anything t)))))
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up)))
              (tags-todo "project"
                    ((org-agenda-overriding-header "Projects")
                     (org-agenda-files '("~/Dropbox/org/"))
                     (org-super-agenda-groups
                      '((:auto-category t))))
                    (org-agenda-sorting-strategy '(deadline-up priority-down tag-up))))
              nil))
  (add-to-list 'org-agenda-custom-commands `,w-view)
  (add-to-list 'org-agenda-custom-commands `,l-view)
  (add-to-list 'org-agenda-custom-commands `,curative-view)
  ;; (add-to-list 'org-agenda-custom-commands `,d-view)

  (setq org-agenda-window-setup 'current-window)
  )

  (setq org-journal-dir "~/Dropbox/org/journal/")
  (setq typescript-indent-level 2)
  (setq js-indent-level 2)
  (indent-guide-global-mode)
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.vue?\\'" . web-mode))
  ;; (add-to-list 'web-mode-content-types-alist '("vue". "\\.vue?\\'"))



  (with-eval-after-load 'web-mode
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    ;; (setq web-mode-content-types-alist
    ;;       '(("vue" . "\\.vue?\\’")
    ;;         ))
    )


  (spacemacs/declare-prefix "o" "custom")
  (spacemacs/set-leader-keys "opc" 'org-projectile-project-todo-completing-read)
  (spacemacs/set-leader-keys "opC" 'org-projectile-project-todo-entry)
  (spacemacs/set-leader-keys "ori" 'org-roam-jump-to-index)

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
                        ( mu4e-refile-folder . "/gmailhome/[Gmail].All Mail")
                        ( mu4e-maildir-shortcuts .
                                                 (
                                                  ("/gmailhome/INBOX"  . ?i)
                                                  )
                                                 )
                        (smtpmail-smtp-user . "rogersjcaleb@gmail.com")
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
                                                  )
                                                 )
                        (smtpmail-smtp-user . "caleb@calebjay.com")
                        (smtpmail-default-smtp-server . "mail.calebjay.com")
                        (smtpmail-smtp-server . "mail.calebjay.com")
                        (smtpmail-smtp-service . 465)
                        (smtpmail-stream-type . ssl)
                        (mu4e-sent-messages-behavior . sent )
                       ))
             ,(make-mu4e-context
               :name "UCurative"
               :enter-func (lambda () (mu4e-message "Entering Curative context"))
               :leave-func (lambda () (mu4e-message "Leaving Curative context"))
               ;; we match based on the contact-fields of the message
               :match-func (lambda (msg)
                             (when msg
                               (string-match-p "^/gmailcurative" (mu4e-message-field msg :maildir))))
               :vars '( ( user-mail-address	    . "calebrogers@curative.com"  )
                        ( user-full-name	    . "Caleb Rogers" )
                        ( mu4e-drafts-folder . "/gmailcurative/[Gmail].Drafts" )
                        ( mu4e-sent-folder   . "/gmailcurative/[Gmail].Sent Mail" )
                        ( mu4e-trash-folder  . "/gmailcurative/[Gmail].Trash" )
                        ( mu4e-refile-folder . "/gmailcurative/[Gmail].All Mail")
                        ( mu4e-maildir-shortcuts .
                                                 (
                                                  ("/gmailcurative/INBOX"  . ?i)
                                                  )
                                                 )
                        (smtpmail-smtp-user . "calebrogers@curative.com")
                        ))
             ))
    )

;;; runs eslint --fix on the current file after save
;;; alpha quality -- use at your own risk

  (defun eslint-fix-file ()
    (interactive)
    (message "eslint --fixing the file" (buffer-file-name))
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (eslint (and root
                        (expand-file-name "node_modules/.bin/eslint"
                                          root))))
      (when (and eslint (file-executable-p eslint))
        (shell-command (concat eslint " --fix " (buffer-file-name))))))

  (defun eslint-fix-file-and-revert ()
    (interactive)
    (eslint-fix-file)
    (revert-buffer t t))

  ;; (add-hook 'js2-mode-hook
  ;;           (lambda ()
  ;;             (add-hook 'after-save-hook #'eslint-fix-file-and-revert)))
  ;; (add-hook 'web-mode-hook
  ;;           (lambda ()
  ;;             (add-hook 'after-save-hook #'eslint-fix-file-and-revert)))


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
  (use-package color-theme-sanityinc-tomorrow)
  (use-package leuven-theme)
  (use-package ample-theme)
  (use-package moe-theme)
  (use-package alect-themes)
  (use-package flatland-theme)
  (use-package gruber-darker-theme)
  (use-package cyberpunk-theme)
  (use-package cyberpunk-theme)

  (use-package composite
    :defer t
    :init
    (defvar composition-ligature-table (make-char-table nil))
    :hook
    (((prog-mode conf-mode nxml-mode markdown-mode help-mode)
      . (lambda () (setq-local composition-function-table composition-ligature-table))))
    :config
    ;; support ligatures, some toned down to prevent hang
    (when (version<= "27.0" emacs-version)
      (let ((alist
             '((33 . ".\\(?:\\(==\\|[!=]\\)[!=]?\\)")
               (35 . ".\\(?:\\(###?\\|_(\\|[(:=?[_{]\\)[#(:=?[_{]?\\)")
               (36 . ".\\(?:\\(>\\)>?\\)")
               (37 . ".\\(?:\\(%\\)%?\\)")
               (38 . ".\\(?:\\(&\\)&?\\)")
               (42 . ".\\(?:\\(\\*\\*\\|[*>]\\)[*>]?\\)")
               ;; (42 . ".\\(?:\\(\\*\\*\\|[*/>]\\).?\\)")
               (43 . ".\\(?:\\([>]\\)>?\\)")
               ;; (43 . ".\\(?:\\(\\+\\+\\|[+>]\\).?\\)")
               (45 . ".\\(?:\\(-[->]\\|<<\\|>>\\|[-<>|~]\\)[-<>|~]?\\)")
               ;; (46 . ".\\(?:\\(\\.[.<]\\|[-.=]\\)[-.<=]?\\)")
               (46 . ".\\(?:\\(\\.<\\|[-=]\\)[-<=]?\\)")
               (47 . ".\\(?:\\(//\\|==\\|[=>]\\)[/=>]?\\)")
               ;; (47 . ".\\(?:\\(//\\|==\\|[*/=>]\\).?\\)")
               (48 . ".\\(?:\\(x[a-fA-F0-9]\\).?\\)")
               (58 . ".\\(?:\\(::\\|[:<=>]\\)[:<=>]?\\)")
               (59 . ".\\(?:\\(;\\);?\\)")
               (60 . ".\\(?:\\(!--\\|\\$>\\|\\*>\\|\\+>\\|-[-<>|]\\|/>\\|<[-<=]\\|=[<>|]\\|==>?\\||>\\||||?\\|~[>~]\\|[$*+/:<=>|~-]\\)[$*+/:<=>|~-]?\\)")
               (61 . ".\\(?:\\(!=\\|/=\\|:=\\|<<\\|=[=>]\\|>>\\|[=>]\\)[=<>]?\\)")
               (62 . ".\\(?:\\(->\\|=>\\|>[-=>]\\|[-:=>]\\)[-:=>]?\\)")
               (63 . ".\\(?:\\([.:=?]\\)[.:=?]?\\)")
               (91 . ".\\(?:\\(|\\)[]|]?\\)")
               ;; (92 . ".\\(?:\\([\\n]\\)[\\]?\\)")
               (94 . ".\\(?:\\(=\\)=?\\)")
               (95 . ".\\(?:\\(|_\\|[_]\\)_?\\)")
               (119 . ".\\(?:\\(ww\\)w?\\)")
               (123 . ".\\(?:\\(|\\)[|}]?\\)")
               (124 . ".\\(?:\\(->\\|=>\\||[-=>]\\||||*>\\|[]=>|}-]\\).?\\)")
               (126 . ".\\(?:\\(~>\\|[-=>@~]\\)[-=>@~]?\\)"))))
        (dolist (char-regexp alist)
          (set-char-table-range composition-ligature-table (car char-regexp)
                                `([,(cdr char-regexp) 0 font-shape-gstring]))))
      (set-char-table-parent composition-ligature-table composition-function-table))
    )
  (with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.node_modules\\'")
    (setq lsp-file-watch-threshold 5000)
    (setq lsp-enable-file-watchers nil)
    )
(defun elfeed-goodies/search-header-draw ()
  "Returns the string to be used as the Elfeed header."
  (if (zerop (elfeed-db-last-update))
      (elfeed-search--intro-header)
    (let* ((separator-left (intern (format "powerline-%s-%s"
                                           elfeed-goodies/powerline-default-separator
                                           (car powerline-default-separator-dir))))
           (separator-right (intern (format "powerline-%s-%s"
                                            elfeed-goodies/powerline-default-separator
                                            (cdr powerline-default-separator-dir))))
           (db-time (seconds-to-time (elfeed-db-last-update)))
           (stats (-elfeed/feed-stats))
           (search-filter (cond
                           (elfeed-search-filter-active
                            "")
                           (elfeed-search-filter
                            elfeed-search-filter)
                           (""))))
      (if (>= (window-width) (* (frame-width) elfeed-goodies/wide-threshold))
          (search-header/draw-wide separator-left separator-right search-filter stats db-time)
        (search-header/draw-tight separator-left separator-right search-filter stats db-time)))))


(fset 'vue-wrap-intl
   (kmacro-lambda-form [?w ?v ?e ?s ?\" ?v ?f ?\" ?s ?\) ?i ?$ ?t escape ?h ?v ?f ?\) ?s ?\} ?v ?f ?\} ?s ?\} escape] 0 "%d"))

)
