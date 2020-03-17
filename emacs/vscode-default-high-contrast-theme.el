(deftheme vscode-default-high-contrast
  "Created 2020-02-24.")

(custom-theme-set-faces
 'vscode-default-high-contrast
 '(cursor ((t (:background "#fff" :foreground "#002b36" :inverse-video t :box (:line-width 1 :color "#f38518")))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#6c71c4"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#839496" :background "#000000"))))
 '(highlight ((t (:background "#073642"))))
 '(region ((t (:background "#fff" :foreground "#000"))))
 '(shadow ((t (:foreground "#586e75"))))
 '(secondary-selection ((t (:background "#073642"))))
 '(trailing-whitespace ((t (:background "#7ca668"))))
 '(font-lock-builtin-face ((t (:weight bold :slant normal :foreground "#839496"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#7ca668" :slant normal))))
 '(font-lock-comment-face ((t (:foreground "#7ca668" :slant normal))))
 '(font-lock-constant-face ((t (:foreground "#268bd2" :weight normal))))
 '(font-lock-doc-face ((t (:foreground "#7ca668" :slant normal))))
 '(font-lock-function-name-face ((t (:foreground "#DCDCAA"))))
 '(font-lock-keyword-face ((t (:foreground "#268bd2" :weight normal))))
 '(font-lock-negation-char-face ((t (:weight bold :foreground "#b58900"))))
 '(font-lock-preprocessor-face ((t (:foreground "#268bd2"))))
 '(font-lock-regexp-grouping-backslash ((t (:weight bold :foreground "#859900"))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold :foreground "#b58900"))))
 '(font-lock-string-face ((t (:foreground "#ce9178"))))
 '(font-lock-type-face ((t (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((t (:foreground "#9cdcfe"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#ff69b4" :inherit (error)))))
 '(button ((t (:underline (:color foreground-color :style line)))))
 '(link ((t (:underline t))))
 '(link-visited ((t (:weight normal :underline (:color foreground-color :style line) :foreground "#b58900"))))
 '(fringe ((t (:foreground "#586e75" :background "#002b36"))))
 '(header-line ((t (:underline (:color "#073642" :style line) :overline nil :box (:line-width 2 :color "#002b36" :style unspecified) :foreground "#839496" :background "#002b36"))))
 '(tooltip ((t (:foreground "#DEB542" :background "#7B6000" :inherit (variable-pitch)))))
 '(mode-line ((t (:background "#000" :foreground "#fff" :box (:line-width 1 :color "#073642" :style unspecified) :overline "#f38518" :underline "#284b54"))))
 '(mode-line-buffer-id ((t (:background "black" :foreground "#0000000" :weight bold :height 1.2 :width extra-expanded))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:underline (:color "#284b54" :style line) :overline "#073642" :box (:line-width 1 :color "#002b36" :style unspecified) :foreground "#586e75" :background "#002b36"))))
 '(isearch ((t (:weight normal :box (:line-width 2 :color "#f38518") :foreground "#000000" :background "#848484"))))
 '(isearch-fail ((t (:weight bold :foreground "#dc322f" :background "#002b36"))))
 '(lazy-highlight ((t (:box (:line-width 1 :color "#f38518")))))
 '(match ((t (:weight bold :foreground "#93a1a1" :background "#073642"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((((class color) (min-colors 89)) (:background "#333333"))))
 '(hl-line ((t (:background "black" :box (:line-width 1 :color "#f38518")))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#fff"))))
 '(sp-show-pair-match-face ((t (:box (:line-width 1 :color "#fff")))))
 '(rainbow-delimiters-base-face ((default (:inherit nil))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#fff"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#fff"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#fff"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#fff"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#fff"))))
 '(window-divider ((t (:foreground "#9cdcfe" :width condensed))))
 '(tool-bar ((t (:background "#fff" :foreground "#000" :box (:line-width 1 :style released-button)))))
 '(powerline-active0 ((t (:box (:line-width 1 :color "#f38518" :style released-button) :foreground "#fff" :background "black"))))
 '(powerline-active1 ((t (:background "#000" :foreground "#fff"))))
 '(powerline-active2 ((t (:background "#000" :foreground "#fff"))))
 '(powerline-inactive0 ((t (:background "#000" :foreground "#fff" :box (:line-width 1 :color "#f38518")))))
 '(powerline-inactive1 ((t (:background "#000" :foreground "#fff"))))
 '(powerline-inactive2 ((t (:background "#000" :foreground "#fff"))))
 '(mode-line-buffer-id-inactive ((t (:inherit (mode-line-buffer-id)))))
 '(window-divider-last-pixel ((t (:foreground "gray40"))))
 '(border ((t (:foreground "#9cdcfe"))))
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(org-level-1 ((t (:foreground "#b180d7"))))
 '(org-level-2 ((t (:inherit (outline-2)))))
 '(org-level-3 ((t (:foreground "#DCDCAA"))))
 '(org-level-4 ((t (:inherit (outline-4)))))
 '(org-level-5 ((t (:inherit (outline-5)))))
 '(org-level-6 ((t (:inherit (outline-6)))))
 '(org-level-7 ((t (:inherit (outline-7)))))
 '(org-level-8 ((t (:inherit (outline-8))))))

(provide-theme 'vscode-default-high-contrast)