;;; -*- lexical-binding: t; no-byte-compile: t; coding: utf-8 -*-
;;
;; Based on the Quiet Light foam for Espresso, by Ian Beck
;; Source: <http://github.com/onecrayon/quiet-light.foam>
;;
;; Ported to Emacs by Martin Kühl <purl.org/net/mkhl>
;;
;; Extended and ported to custom-theme (emacs24+)
;; by Victor Deryagin <vderyagin@gmail.com>
;;

(deftheme quiet-light "Another light color theme")

(let ((class '((class color) (background light) (min-colors 256)))
      (bg "#e5e5e5") (fg "#333333")
      (grey-1   "#808080")
      (green-1  "#448c27") (green-2  "#a3cfa0") (green-3  "#c9e2c9") (green-4  "#ddffdd")
      (orange-1 "#ab6526") (orange-2 "#e06400") (orange-3 "#e5a775") (orange-4 "#f7d1b4")
      (red-1    "#660000") (red-2    "#aa3731") (red-3    "#ff6b6b")
      (pink-1   "#e7b0b0") (pink-2   "#ffdddd") (pink-3   "#eee3e3")
      (blue-1   "#3c5f8d") (blue-2   "#4b93cd") (blue-3   "#3a5fcd") (blue-4   "#ddddff")
      (purple-1 "#7a3e9d") (purple-2 "#e8c0ff")
      (yellow-1 "#ffffdd"))

  (custom-theme-set-faces
   'quiet-light

   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,fg :foreground ,fg))))
   `(fringe ((,class (:background "white"))))
   `(link ((,class (:foreground ,blue-3 :underline t))))
   `(link-visited ((,class (:inherit link :foreground ,purple-1))))
   `(error ((,class (:inherit font-lock-warning-face :weight bold))))
   `(warning ((,class (:foreground ,orange-2 :weight bold))))
   `(success ((,class (:foreground ,green-1 :weight bold))))
   `(variable-pitch ((,class (:family "DejaVu Sans"))))

   `(hl-line ((,class (:background "white"))))
   `(highlight ((,class (:background ,orange-3 :foreground ,fg))))
   `(region ((,class (:background "#c9d0d9"))))
   `(isearch ((,class (:inherit highlight))))
   `(lazy-highlight ((,class (:background ,orange-4))))
   `(secondary-selection ((,class (:inherit lazy-highlight))))
   `(shadow ((,class (:foreground "#7f7f7f" :background "white"))))
   `(match ((,class (:inherit highlight))))

   `(font-lock-builtin-face ((,class (:foreground ,blue-1))))
   `(font-lock-comment-face ((,class (:foreground "Violetred4"))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,grey-1))))
   `(font-lock-constant-face ((,class (:foreground ,orange-1))))
   `(font-lock-function-name-face ((,class (:foreground ,red-2))))
   `(font-lock-keyword-face ((,class (:foreground ,blue-2 :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground "#434343"))))
   `(font-lock-reference-face ((,class (:foreground ,orange-1))))
   `(font-lock-string-face ((,class (:foreground ,green-1))))
   `(font-lock-type-face ((,class (:foreground ,purple-1 :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,purple-1))))
   `(font-lock-warning-face ((,class (:foreground ,red-1 :background ,pink-3))))

   `(show-paren-match ((,class (:background ,green-2))))
   `(show-paren-mismatch ((,class (:background ,orange-4))))

   `(org-agenda-clocking ((,class (:bold t))))
   `(org-agenda-current-time ((,class (:foreground "#555555"))))
   `(org-agenda-date ((,class (:inherit default :slant normal :weight normal :foreground ,orange-1))))
   `(org-agenda-date-today ((,class (:foreground ,orange-1 :box (:line-width -1 :color ,fg)))))
   `(org-agenda-done ((,class (:inherit default :foreground "#555555"))))
   `(org-agenda-structure ((,class (:inherit font-lock-function-name-face :weight bold))))
   `(org-checkbox ((,class (:inherit bold))))
   `(org-checkbox-statistics-todo ((,class (:inherit bold))))
   `(org-date ((,class (:foreground ,green-1 :weight bold :underline t))))
   `(org-date-selected ((,class (:background ,orange-3))))
   `(org-habit-alert-future-face ((,class (:background "yellow"))))
   `(org-habit-clear-face ((,class (:background ,purple-2))))
   `(org-habit-clear-future-face ((,class (:background "white"))))
   `(org-habit-overdue-face ((,class (:background ,red-3))))
   `(org-habit-overdue-future-face ((,class (:background ,pink-1))))
   `(org-habit-ready-face ((,class (:background ,green-2))))
   `(org-habit-ready-future-face ((,class (:background ,green-3))))
   `(org-hide ((,class (:foreground "white"))))
   `(org-link ((,class (:inherit link))))
   `(org-mode-line-clock ((,class (:background "white"))))
   `(org-mode-line-clock-overrun ((,class (:background ,pink-1))))
   `(org-scheduled ((,class (:inherit default))))
   `(org-scheduled-previously ((,class (:foreground ,red-1 :weight bold))))
   `(org-scheduled-today ((,class (:inherit org-scheduled))))
   `(org-sexp-date ((,class (:inherit org-date :underline nil))))
   `(org-special-keyword ((,class (:foreground ,orange-2 :weight bold))))
   `(org-table ((,class (:foreground ,blue-1))))
   `(org-tag ((,class (:background ,yellow-1 :foreground ,fg :weight bold))))
   `(org-time-grid ((,class (:foreground ,grey-1))))
   `(org-warning ((,class (:inherit font-lock-warning-face :background ,bg :weight bold))))

   `(dired-async-message ((,class (:inherit bold))))
   `(dired-async-mode-message ((,class (:inherit bold :background ,green-3))))
   `(diredp-compressed-file-suffix ((,class (:inherit diredp-ignored-file-name :weight bold))))
   `(diredp-deletion ((,class (:background ,pink-1 :weight bold))))
   `(diredp-deletion-file-name ((,class (:inherit diredp-deletion))))
   `(diredp-dir-heading ((,class (:inherit bold :background "white"))))
   `(diredp-dir-priv ((,class (:inherit bold))))
   `(diredp-executable-tag ((,class (:inherit font-lock-function-name-face))))
   `(diredp-file-name ((,class (:foreground ,blue-1))))
   `(diredp-file-suffix ((,class (:inherit diredp-file-name :weight bold))))
   `(diredp-flag-mark ((,class (:background ,purple-2 :weight bold))))
   `(diredp-flag-mark-line ((,class (:inherit diredp-flag-mark))))
   `(diredp-ignored-file-name ((,class (:inherit font-lock-string-face))))
   `(diredp-mode-line-flagged ((,class (:foreground ,red-2 :weight bold))))
   `(diredp-mode-line-marked ((,class (:foreground ,purple-1 :weight bold))))
   `(diredp-number ((,class (:inherit bold))))
   `(diredp-symlink ((,class (:foreground ,grey-1))))

   `(erc-current-nick-face ((,class (:foreground ,red-2 :weight bold))))
   `(erc-notice-face ((,class (:foreground ,grey-1))))
   `(erc-prompt-face ((,class (:inherit minibuffer-prompt))))
   `(erc-timestamp-face ((,class (:foreground ,green-1 :weight bold))))

   `(diff-file-header ((,class (:bold t :inherit diff-header))))
   `(diff-header ((,class (:background ,blue-4 :foreground ,fg))))
   `(diff-added ((,class (:background ,green-4))))
   `(diff-removed ((,class (:background ,pink-2))))
   `(diff-changed ((,class (:background ,yellow-1))))
   `(diff-refine-change ((,class (:background ,blue-4))))

   `(git-commit-address-face ((,class (:inherit font-lock-variable-name-face))))
   `(git-commit-summary-face ((,class (:inherit default))))
   `(git-commit-nonempty-second-line-face ((,class (:inherit font-lock-warning-face))))
   `(git-commit-overlong-summary-face ((,class (:inherit git-commit-nonempty-second-line-face))))
   `(git-commit-branch-face ((,class (:inherit bold))))
   `(git-commit-comment-heading-face ((,class (:inherit default))))
   `(git-commit-comment-action-face ((,class (:inherit font-lock-function-name-face))))
   `(git-commit-comment-file-face ((,class (:inherit font-lock-string-face))))

   `(magit-diff-add ((,class (:inherit diff-added :foreground ,fg))))
   `(magit-diff-del ((,class (:inherit diff-removed :foreground ,fg))))
   `(magit-diff-file-header ((,class (:inherit diff-header))))
   `(magit-diff-hunk-header ((,class (:inherit diff-header))))
   `(magit-diff-none ((,class (:inherit diff-context :foreground ,fg))))
   `(magit-header ((,class (:inherit header-line :background "white" :weight bold))))
   `(magit-item-highlight ((,class (:weight bold))))
   `(magit-log-head-label-wip ((,class :box t :background "#cde1e3" :foreground ,blue-1)))

   `(ahg-status-marked-face ((,class (:inherit diredp-flag-mark))))
   `(ahg-header-line-face ((,class (:inherit header-line :background "white" :weight bold))))
   `(ahg-header-line-root-face ((,class (:inherit font-lock-constant-face :background "white"))))

   `(bmkp->-mark ((,class (:inherit diredp-flag-mark))))
   `(bmkp-gnus ((,class (:foreground ,orange-1))))
   `(bmkp-info ((,class (:inherit bmkp-man :weight bold))))
   `(bmkp-man ((,class (:foreground ,green-1))))
   `(bmkp-function ((,class (:inherit font-lock-function-name-face))))
   `(bmkp-D-mark ((,class (:inherit diredp-deletion))))
   `(bmkp-url ((,class (:inherit font-lock-variable-name-face))))
   `(bmkp-heading ((,class (:foreground ,purple-1 :weight bold))))
   `(bmkp-local-directory ((,class (:inherit diredp-dir-priv))))
   `(bmkp-local-file-without-region ((,class (:inherit diredp-file-name))))
   `(bmkp-local-file-with-region ((,class (:inherit region))))
   `(bmkp-non-file ((,class (:foreground ,grey-1))))
   `(bmkp-su-or-sudo ((,class (:foreground ,red-1))))
   `(bmkp-url ((,class (:inherit link :underline nil))))

   `(jabber-chat-error ((,class (:foreground ,red-1 :weight bold))))
   `(jabber-chat-prompt-local ((,class (:foreground ,blue-3 :weight bold))))
   `(jabber-chat-prompt-system ((,class (:foreground ,green-1 :weight bold))))
   `(jabber-roster-user-chatty ((,class (:foreground ,orange-1 :slant normal :weight bold))))
   `(jabber-roster-user-online ((,class (:foreground ,blue-3 :slant normal :weight bold))))
   `(jabber-title-large ((,class (:inherit variable-pitch :weight bold :height 2.0 :width ultra-expanded))))
   `(jabber-title-medium ((,class (:inherit variable-pitch :weight bold :height 1.5 :width expanded))))

   `(outline-1 ((,class (:inherit font-lock-function-name-face :weight bold))))
   `(outline-2 ((,class (:inherit font-lock-comment-face :weight normal))))
   `(outline-3 ((,class (:inherit font-lock-builtin-face :weight normal))))
   `(outline-4 ((,class (:inherit font-lock-string-face :weight normal))))
   `(outline-5 ((,class (:inherit font-lock-type-face :weight normal))))
   `(outline-6 ((,class (:inherit font-lock-constant-face :weight normal))))
   `(outline-7 ((,class (:inherit font-lock-keyword-face :weight normal))))
   `(outline-8 ((,class (:inherit font-lock-variable-name-face :weight normal))))

   `(w3m-anchor ((,class (:inherit link))))
   `(w3m-arrived-anchor ((,class (:inherit link-visited))))
   `(w3m-form ((,class (:foreground ,blue-2 :underline t))))
   `(w3m-header-line-location-title ((,class (:inherit link))))

   `(info-command-ref-item ((,class (:background "white" :foreground ,blue-4))))
   `(info-file ((,class (:inherit info-command-ref-item))))
   `(info-menu-star ((,class (:foreground ,red-2))))
   `(info-node ((,class (:inherit font-lock-type-face))))

   `(irfc-rfc-number-face ((,class (:foreground ,green-1 :underline t :weight bold))))
   `(irfc-table-item-face ((,class (:foreground ,blue-1 :weight bold))))
   `(irfc-title-face ((,class (:foreground ,orange-1 :weight bold))))
   `(irfc-reference-face ((,class (:weight bold :foreground ,purple-1))))
   `(irfc-requirement-keyword-face ((,class (:weight bold :foreground ,red-1))))
   `(irfc-std-number-face ((,class (:foreground ,grey-1 :weight bold))))
   `(irfc-rfc-link-face ((,class (:inherit link))))

   `(eshell-ls-archive ((,class (:foreground ,purple-1 :weight bold))))
   `(eshell-ls-directory ((,class (:foreground ,blue-1 :weight bold))))
   `(eshell-prompt ((,class (:inherit bold :foreground ,green-1))))

   `(compilation-column-number ((,class (:foreground ,blue-1))))
   `(compilation-error ((,class (:inherit font-lock-warning-face :weight bold :underline t))))
   `(compilation-info ((,class (:background ,bg :foreground ,green-1 :weight bold))))
   `(compilation-line-number ((,class (:foreground ,green-1))))
   `(compilation-mode-line-fail ((,class (:inherit compilation-error :underline nil))))
   `(compilation-warning ((,class (:background ,bg :foreground ,orange-2 :weight bold))))

   `(custom-group-tag ((,class (:inherit variable-pitch :foreground ,blue-3 :weight bold :height 1.2))))
   `(custom-variable-tag ((,class (:foreground ,blue-3 :weight bold))))

   `(helm-M-x-key ((,class (:inherit font-lock-builtin-face :weight bold))))
   `(helm-bookmark-directory ((,class (:inherit diredp-dir-priv))))
   `(helm-bookmark-file ((,class (:inherit diredp-file-name))))
   `(helm-bookmark-gnus ((,class (:foreground ,orange-1))))
   `(helm-bookmark-info ((,class (:foreground ,green-1 :weight bold))))
   `(helm-bookmark-w3m ((,class (:inherit link))))
   `(helm-bookmarks-su ((,class (:foreground ,red-1))))
   `(helm-buffer-not-saved ((,class (:foreground ,red-2))))
   `(helm-buffer-saved-out ((,class (:inherit font-lock-warning-face))))
   `(helm-buffer-size ((,class (:inherit font-lock-builtin-face))))
   `(helm-candidate-number ((,class (:inherit mode-line :background "white"))))
   `(helm-ff-directory ((,class (:inherit diredp-dir-priv))))
   `(helm-ff-executable ((,class (:foreground ,orange-1))))
   `(helm-ff-file ((,class (:inherit diredp-file-name))))
   `(helm-ff-prefix ((,class (:background ,yellow-1 :foreground ,fg))))
   `(helm-ff-symlink ((,class (:inherit diredp-symlink))))
   `(helm-grep-lineno ((,class (:inherit compilation-warning :underline t))))
   `(helm-header ((,class (:inherit bold :background "#bfbfbf"))))
   `(helm-lisp-completion-info ((,class (:inherit default :background "white"))))
   `(helm-lisp-show-completion ((,class (:background ,green-3))))
   `(helm-moccur-buffer ((,class (:inherit compilation-info, :underline t))))
   `(helm-selection ((,class (:background "white"))))
   `(helm-selection-line ((,class (:background ,yellow-1))))
   `(helm-separator ((,class (:foreground ,grey-1))))
   `(helm-source-header ((,class (:inherit org-agenda-structure))))
   `(helm-time-zone-current ((,class (:foreground ,green-1 :box (:line-width -1 :color ,fg)))))
   `(helm-time-zone-home ((,class (:foreground ,orange-1 ))))
   `(helm-visible-mark ((,class (:inherit diredp-flag-mark))))

   `(sh-heredoc ((,class (:foreground ,orange-2))))
   `(sh-quoted-exec ((,class (:foreground ,red-1))))

   `(mode-line ((,class (:background "#bfbfbf" :box (:line-width -1 :color ,fg)))))
   `(mode-line-highlight ((,class (:box (:line-width -2 :color ,fg)))))
   `(mode-line-inactive ((,class (:background ,bg :box (:line-width -1 :color "#999999")))))

   `(sml/git ((,class (:inherit sml/vc))))
   `(sml/modified ((,class (:inherit bold :foreground ,red-2))))
   `(sml/vc ((,class (:foreground ,blue-1))))
   `(sml/vc-edited ((,class (:inherit sml/vc :weight bold))))

   `(flymake-warnline ((,class (:background ,yellow-1))))
   `(flymake-errline ((,class (:background ,pink-1))))

   `(slime-repl-inputed-output-face ((,class (:foreground ,red-2 :weight bold))))
   `(slime-repl-prompt-face ((,class (:inherit minibuffer-prompt))))

   `(vderyagin-twittering-metainfo-face ((,class (:foreground "#888888"))))
   `(vderyagin-twittering-username-face ((,class (:weight bold :height 130 :underline nil))))
   `(twittering-username-face ((,class (:weight bold :foreground ,orange-1 :underline nil))))
   `(twittering-uri-face ((,class (:inherit link))))

   `(gnus-server-opened ((,class (:inherit bold :foreground ,green-1))))
   `(gnus-server-closed ((,class (:inherit bold :foreground ,blue-2))))

   `(gnus-summary-cancelled ((,class (:inherit diredp-deletion))))
   `(gnus-summary-selected ((,class (:background "white"))))
   `(gnus-summary-normal-ancient ((,class (:foreground "#666666"))))

   `(gnus-cite-1 ((,class (:foreground ,blue-1))))
   `(gnus-cite-2 ((,class (:foreground ,red-2))))
   `(gnus-cite-3 ((,class (:foreground ,green-1))))
   `(gnus-cite-4 ((,class (:foreground ,orange-1))))
   `(gnus-cite-5 ((,class (:foreground ,purple-1))))
   `(gnus-cite-6 ((,class (:foreground "#00746b"))))
   `(gnus-cite-7 ((,class (:foreground "#a0410d"))))
   `(gnus-cite-8 ((,class (:foreground "#9e005d"))))
   `(gnus-cite-9 ((,class (:foreground "#a36209"))))
   `(gnus-cite-10 ((,class (:foreground "#0076a3"))))
   `(gnus-cite-11 ((,class (:foreground "#007236"))))

   `(gnus-group-news-1-empty ((,class (:foreground ,red-2))))
   `(gnus-group-news-1 ((,class (:inherit gnus-group-news-1-empty :weight bold))))
   `(gnus-group-news-2-empty ((,class (:foreground ,orange-1))))
   `(gnus-group-news-2 ((,class (:inherit gnus-group-news-2-empty :weight bold))))
   `(gnus-group-news-3-empty ((,class (:foreground ,blue-1))))
   `(gnus-group-news-3 ((,class (:inherit gnus-group-news-3-empty :weight bold))))
   `(gnus-group-news-4-empty ((,class (:foreground ,purple-1))))
   `(gnus-group-news-4 ((,class (:inherit gnus-group-news-4-empty :weight bold))))
   `(gnus-group-news-5-empty ((,class (:foreground ,orange-2))))
   `(gnus-group-news-5 ((,class (:inherit gnus-group-news-5-empty :weight bold))))
   `(gnus-group-news-low-empty ((,class (:inherit font-lock-comment-delimiter-face))))
   `(gnus-group-news-low ((,class (:inherit gnus-group-news-low-empty :weight bold))))

   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-1 ((,class (:inherit gnus-group-news-1))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-2 ((,class (:inherit gnus-group-news-2))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-3 ((,class (:inherit gnus-group-news-3))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-mail-low ((,class (:inherit gnus-group-news-low))))

   `(gnus-header-content ((,class (:foreground ,green-1))))
   `(gnus-header-from ((,class (:weight bold :foreground ,orange-1))))
   `(gnus-header-name ((,class (:inherit font-lock-builtin-face :weight bold))))
   `(gnus-header-newsgroups ((,class (:foreground "#888a85"))))
   `(gnus-header-subject ((,class (:foreground ,red-2 :weight bold))))

   `(gnus-signature ((,class (:inherit font-lock-comment-delimiter-face :slant italic))))

   `(message-cited-text ((,class (:foreground "#888a85"))))
   `(message-header-cc ((,class (:foreground ,orange-1))))
   `(message-header-name ((,class (:inherit gnus-header-name))))
   `(message-header-other ((,class (:foreground ,orange-1))))
   `(message-header-subject ((,class (:inherit gnus-header-subject))))
   `(message-header-to ((,class (:weight bold :foreground ,orange-1))))
   `(message-header-xheader ((,class (:foreground ,blue-3))))
   `(message-separator ((,class (:weight bold :foreground ,green-1))))

   `(speedbar-button-face ((,class (:inherit bold))))
   `(speedbar-directory-face ((,class (:inherit diredp-dir-priv))))
   `(speedbar-file-face ((,class (:inherit diredp-file-name))))
   `(speedbar-highlight-face ((,class (:background ,orange-4))))
   `(speedbar-selected-face ((,class (:inherit speedbar-file-face :box (:line-width -1 :color ,fg) :weight bold))))
   `(speedbar-separator-face ((,class (:background ,blue-1 :foreground ,fg))))

   `(textile-acronym-face ((,class (:inherit font-lock-type-face))))
   `(textile-alignments-face ((,class (:inherit textile-acronym-face))))
   `(textile-class-face ((,class (:inherit font-lock-string-face :weight bold))))
   `(textile-code-face ((,class (:inherit org-code))))
   `(textile-image-face ((,class (:inherit font-lock-constant-face))))
   `(textile-lang-face ((,class (:inherit font-lock-keyword-face))))
   `(textile-link-face ((,class (:inherit link))))
   `(textile-ol-bullet-face ((,class (:inherit font-lock-function-name-face))))
   `(textile-pre-face ((,class (:inherit font-lock-string-face))))
   `(textile-ul-bullet-face ((,class (:inherit bold))))

   `(whitespace-trailing ((,class (:foreground ,grey-1 :background ,yellow-1))))
   `(trailing-whitespace ((,class (:inherit whitespace-trailing))))
   `(whitespace-tab ((,class (:inherit whitespace-trailing :background ,yellow-1))))
   `(whitespace-space-before-tab ((,class (:inherit whitespace-tab))))
   `(whitespace-space-after-tab ((,class (:inherit whitespace-tab))))

   `(gomoku-O ((,class (:inherit bold :foreground ,red-2))))
   `(gomoku-X ((,class (:inherit bold :foreground ,green-1))))

   `(mpuz-unsolved ((,class (:inherit bold :foreground ,red-2))))
   `(mpuz-solved ((,class (:inherit bold :foreground ,green-1))))
   `(mpuz-trivial ((,class (:inherit bold :foreground ,blue-1))))

   `(ert-test-result-expected ((,class (:foreground ,fg :background ,green-2))))
   `(ert-test-result-unexpected ((,class (:foreground ,fg :background ,pink-1))))

   `(erb-delim-face ((,class (:inherit font-lock-preprocessor-face :weight bold))))
   `(erb-face ((,class (:background "white"))))
   `(erb-out-delim-face ((,class (:inherit erb-delim-face :foreground ,red-2 :weight bold))))
   `(erb-comment-face ((,class (:inherit bold :foreground ,green-1))))

   `(term ((,class (:inherit default))))
   `(term-color-black ((,class (:foreground ,fg))))
   `(term-color-blue ((,class (:foreground ,blue-1))))
   `(term-color-cyan ((,class (:foreground ,blue-2))))
   `(term-color-green ((,class (:foreground ,green-1))))
   `(term-color-magenta ((,class (:foreground ,purple-1))))
   `(term-color-red ((,class (:foreground ,red-2))))
   `(term-color-white ((,class (:foreground ,bg))))
   `(term-color-yellow ((,class (:foreground ,orange-1))))
   `(term-underline ((,class (:underline t))))
   `(term-bold ((,class (:inherit bold))))

   `(sp-pair-overlay-face ((,class (:background ,orange-4))))
   `(sp-wrap-overlay-face ((,class (:background ,orange-4))))
   `(sp-wrap-tag-overlay-face ((,class (:background ,orange-4))))

   `(woman-addition ((,class (:inherit font-lock-builtin-face :weight bold))))
   `(woman-bold ((,class (:inherit font-lock-string-face :weight bold))))

   `(flyspell-incorrect ((,class (:inherit font-lock-warning-face :weight bold))))
   `(flyspell-duplicate ((,class (:inherit flyspell-incorrect :foreground ,orange-1))))

   `(shm-quarantine-face ((,class (:background ,green-3))))
   `(shm-current-face ((,class (:background "white"))))

   `(haskell-interactive-face-prompt ((,class (:inherit minibuffer-prompt))))
   `(haskell-interactive-face-compile-error ((,class (:foreground ,red-1))))
   `(haskell-interactive-face-compile-warning ((,class (:foreground ,orange-1))))

   `(cider-repl-err-output-face ((,class (:foreground ,red-1))))
   `(cider-repl-prompt-face ((,class (:inherit minibuffer-prompt))))

   `(pe/directory-face ((,class (:inherit diredp-dir-priv :foreground ,fg))))
   `(pe/file-face ((,class (:inherit diredp-file-name))))

   `(popup-isearch-match ((,class (:background ,orange-3))))

   `(web-mode-block-control-face ((,class (:inherit font-lock-keyword-face))))
   `(web-mode-block-delimiter-face ((,class (:inherit bold))))
   `(web-mode-doctype-face ((,class (:inherit font-lock-keyword-face))))
   `(web-mode-html-attr-name-face ((,class (:inherit font-lock-constant-face))))
   `(web-mode-html-tag-face ((,class (:inherit font-lock-function-name-face))))
   `(web-mode-param-name-face ((,class (:inherit font-lock-constant-face))))
   `(web-mode-symbol-face ((,class (:inherit web-mode-html-attr-name-face))))

   `(ledger-font-comment-face ((,class (:inherit font-lock-comment-face))))
   `(ledger-font-directive-face ((,class (:inherit font-lock-keyword-face))))
   `(ledger-font-payee-cleared-face ((,class (:inherit font-lock-string-face :weight bold))))
   `(ledger-font-payee-pending-face ((,class (:inherit warning))))
   `(ledger-font-payee-uncleared-face ((,class (:inherit ledger-font-payee-pending-face :weight normal))))
   `(ledger-font-posting-account-face ((,class (:inherit font-lock-variable-name-face))))
   `(ledger-font-posting-amount-face ((,class (:inherit font-lock-builtin-face :weight bold))))
   `(ledger-font-posting-date-face ((,class (:inherit bold))))
   `(ledger-occur-xact-face ((,class (:inherit hl-line))))

   `(Man-overstrike ((,class (:inherit font-lock-string-face :weight bold))))
   `(ac-completion-face ((,class (:background ,green-3))))
   `(c-annotation-face ((,class (:inherit font-lock-type-face))))
   `(comint-highlight-prompt ((,class (:inherit minibuffer-prompt))))
   `(desktop-entry-group-header-face ((,class (:inherit font-lock-type-face))))
   `(fancy-narrow-blocked-face ((,class (:foreground ,grey-1))))
   `(helm-locate-finish ((,class (:inherit compilation-info))))
   `(ido-subdir ((,class (:inherit diredp-dir-priv))))
   `(linum ((,class (:background "#d0d0d0" :foreground ,fg))))
   `(macrostep-macro-face ((,class (:inherit font-lock-keyword-face :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,blue-1 :weight bold))))
   `(nrepl-error-face ((,class (:inherit font-lock-warning-face))))
   `(proced-marked ((,class (:inherit diredp-flag-mark))))
   `(rspec-button-face ((,class (:inherit font-lock-function-name-face))))
   `(tuareg-font-lock-governing-face ((,class (:inherit font-lock-builtin-face :weight bold))))
   `(which-func ((,class (:inherit font-lock-function-name-face :weight bold))))
   `(widget-button ((,class (:underline nil :weight bold))))
   `(yas-field-highlight-face ((,class (:background ,green-3))))
   )

  (custom-theme-set-variables
   'quiet-light
   `(ansi-color-faces-vector [default bold font-lock-comment-delemiter-face italic underline success warning error])
   `(ansi-color-names-vector [,fg ,red-2 ,green-1 ,orange-2 ,blue-1 ,purple-1 ,blue-2 "#999999"])
   '(compilation-message-face 'bold)
   '(frame-background-mode 'light)
   ))

(provide-theme 'quiet-light)
