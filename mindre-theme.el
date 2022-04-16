;;; mindre-theme.el --- mindre -*- lexical-binding: t -*-
;; ---------------------------------------------------------------------
;; GNU Emacs / mindre
;; Copyright (C) 2020-2021 - ebn
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;; ---------------------------------------------------------------------

(deftheme mindre
  "mindre Theme")

(defgroup mindre nil
  "mindre")

(defcustom mindre-background "#F5F5F5"
  "Default background color"
  :type 'color :group 'mindre)

(defcustom mindre-background-dark-1 "#2E3440"
  "Default dark background"
  :type 'color :group 'mindre)

(defcustom mindre-background-dark-2 "#4C566A"
  "Lighter dark background "
  :type 'color :group 'mindre)

(defcustom mindre-foreground "#37474F"
  "Default foreground color"
  :type 'color :group 'mindre)

(defcustom mindre-highlight "#CFD8DC"
  "Highlight color is used to highlight part of the screen."
  :type 'color :group 'mindre)

(defcustom mindre-highlight-alt "#ECEFF1"
  "Lighter highlight color used to highlight part of the screen."
  :type 'color :group 'mindre)

(defcustom mindre-yellow "#966544"
  "Default yellow color"
  :type 'color :group 'mindre)

(defcustom mindre-ok "#966544"
  "Default yellow color"
  :type 'color :group 'mindre)

(defcustom mindre-warning "#EBCB8B"
  "Default yellow color"
  :type 'color :group 'mindre)

(defcustom mindre-error "#BF616A"
  "Default yellow color"
  :type 'color :group 'mindre)

(defcustom mindre-subtle "#ECEFF1"
  "Subtle color is used to suggest a physical area on the screen."
  :type 'color :group 'mindre)

(defcustom mindre-faded "#B0BEC5"
  "Faded face is for information that are less important."
  :type 'color :group 'mindre)

(defcustom mindre-salient "#673AB7"
  "Salient color is used for information that are important."
  :type 'color :group 'mindre)

(defcustom mindre-salient-alt "#00625D"
  "Alt Salient color is used for information that are important"
  :type 'color :group 'mindre)

(defcustom mindre-verbatim "#62543E"
  "Color used for things like strings."
  :type 'color :group 'mindre)

(defcustom mindre-strong "#161c20"
  "Strong color is used for information of a structural nature."
  :type 'color :group 'mindre)

(defcustom mindre-popout "#000"
  "Popout colour is used for information that needs attention."
  :type 'color :group 'mindre)

(defcustom mindre-critical "#BF616A"
  "Critical face is for information that requires immediate action."
  :type 'color :group 'mindre)

(defface mindre-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
  :group nil)

(defface mindre-critical-i nil
  "Critical face inversed." :group nil)

(defface mindre-popout nil
  "Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
  :group nil)

(defface mindre-popout-i nil
  "Popout face inversed." :group nil)

(defface mindre-strong nil
  "Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
  :group nil)

(defface mindre-strong-i nil
  "Strong face inversed." :group nil)

(defface mindre-salient nil
  "Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
  :group nil)

(defface mindre-salient-i nil
  "Strong face inversed." :group nil)

(defface mindre-faded nil
  "Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
  :group nil)

(defface mindre-faded-i nil
  "Faded face inversed." :group nil)

(defface mindre-subtle nil
  "Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
  :group nil)

(defface mindre-subtle-i nil
  "Subtle face inversed." :group nil)

(defface mindre-default nil
  "Default face." :group nil)

(defface mindre-default-i nil
  "Default face inversed." :group nil)

(defface mindre-highlight nil
  "Default highligt face."
  :group nil)

(defface mindre-block nil
  "Default block face"
  :group nil)

(defvar mindre-after-load-hook nil
  "Hook run after theme has loaded.")

(defun mindre ()
  "mindre theme"
  (interactive)
  (set-foreground-color mindre-foreground)
  (set-background-color mindre-background)
  (load-theme 'mindre t)
  (run-hooks 'mindre-after-load-hook))

(let ((light     '((background light)))
      (dark      '((background dark)))
      (tty-light '((type tty) (background light)))
      (tty-dark  '((type tty) (background dark))))

  ;; --- Faces ---------------------------------------------------------
  (custom-theme-set-faces
   'mindre

   ;; --- Base ---------------------------------------------------------
   `(cursor ((t (:foreground ,mindre-background
			     :background ,mindre-foreground))
             ))

   `(default ((t (:background ,mindre-background
	  		      :foreground ,mindre-foreground))))

   `(highlight ((t (:background ,mindre-highlight))))

   `(mindre-subtle ((t (:background ,mindre-subtle))))

   `(mindre-subtle-i ((t (:foreground ,mindre-subtle))))

   `(mindre-faded ((t (:foreground ,mindre-faded))))

   `(mindre-faded-i ((t (:foreground ,mindre-background
					   :background ,mindre-faded))))

   `(mindre-default ((t (:foreground ,mindre-foreground))))

   `(mindre-default-i ((t (:foreground ,mindre-background
					     :background ,mindre-foreground))))


   `(mindre-salient ((t (:foreground ,mindre-salient))))

   `(mindre-salient-i ((t (:foreground ,mindre-background
					     :background ,mindre-salient))))
   `(mindre-strong   ((t (:foreground ,mindre-strong))))
   `(mindre-strong-i ((t (:foreground ,mindre-background
					    :background ,mindre-strong
					    :weight bold))))

   `(mindre-popout ((t (:foreground ,mindre-popout))))

   `(mindre-popout-i ((t (:foreground ,mindre-background
					    :background ,mindre-popout))))

   `(mindre-critical ((t (:foreground ,mindre-background
					    :background ,mindre-critical))))

   `(mindre-critical-i ((t (:foreground ,mindre-critical
					      ;; :background ,mindre-background
					      ))))

   `(mindre-block ((t (:background "#f2f2f2"
					 :foreground ,mindre-foreground))))
   ;; --- Header & mode line -------------------------------------------

   `(mode-line ((t ( :foreground "white"
		     :background ,mindre-background-dark-1
                     :box (:line-width 1 :color ,mindre-background-dark-2 :style nil) ))))

   `(mode-line-highlight ((t (:inherit nil :background nil
				       :box nil))))
   `(mode-line-buffer-id ((t (:weight regular :background nil))))
   `(mode-line-emphasis  ((t (:weight regular :background nil))))
   `(mode-line-inactive ((t ( :foreground "white"
			      :background ,mindre-background-dark-2
			      :box (:line-width 1 :color ,mindre-background-dark-2 :style nil) ))))

   `(header-line ((t (:foreground ,mindre-foreground
				  :background ,mindre-subtle
				  :inherit nil
				  :box nil))))

   ;; --- Structural ---------------------------------------------------
   '(bold                        ((t (:inherit mindre-strong :weight semibold))))
   '(italic                      ((t (:slant italic))))
   '(italic                      ((t (:inherit mindre-faded))))
   '(bold-italic                 ((t (:inherit mindre-strong))))
   '(region                      ((t (:inherit highlight))))
   '(fringe                      ((t (:inherit (mindre-faded)))))
   '(hl-line                     ((t (:inherit highlight))))
   '(link                        ((t (:inherit mindre-salient))))
   '(fixed-pitch                 ((t (:inherit default))))
   '(fixed-pitch-serif           ((t (:inherit default))))

   ;; --- Semantic -----------------------------------------------------
   '(shadow                        ((t (:inherit mindre-faded))))
   '(success                       ((t (:inherit mindre-salient))))
   '(warning                       ((t (:inherit mindre-warning))))
   '(error                         ((t (:inherit mindre-critical))))
   '(match                         ((t (:inherit mindre-popout))))

   ;; --- General ------------------------------------------------------
   '(buffer-menu-buffer            ((t (:inherit mindre-strong))))
   '(minibuffer-prompt             ((t (:inherit mindre-strong))))
   '(isearch                       ((t (:inherit mindre-strong))))
   '(isearch-fail                  ((t (:inherit mindre-faded))))
   '(show-paren-match              ((t (:inherit nil :weight bold :foreground "#AB47BC"))))
   '(show-paren-mismatch           ((t (:inherit mindre-critical))))
   '(lazy-highlight                ((t (:inherit mindre-subtle))))
   '(trailing-whitespace           ((t (:inherit mindre-subtle))))
   '(secondary-selection           ((t (:inherit mindre-subtle))))
   '(completions-annotations       ((t (:inherit mindre-faded))))
   '(completions-common-part       ((t (:inherit mindre-faded))))
   '(completions-first-difference  ((t (:inherit default))))
   '(tooltip                       ((t (:inherit mindre-subtle))))
   '(read-multiple-choice-face     ((t (:inherit mindre-strong))))
   '(nobreak-hyphen                ((t (:inherit mindre-popout))))
   '(nobreak-space                 ((t (:inherit mindre-popout))))
   '(help-argument-name            ((t (:inherit mindre-faded))))
   '(tabulated-list-fake-header    ((t (:inherit mindre-strong))))
   '(tool-bar                      ((t (:inherit mindre-faded-i))))

   ;; --- TTY faces ----------------------------------------------------
   '(tty-menu-disabled-face        ((t (:inherit mindre-faded-i))))
   '(tty-menu-enabled-face         ((t (:inherit mindre-default-i))))
   '(tty-menu-selected-face        ((t (:inherit mindre-salient-i))))

   ;; --- Eshell ----------------------------------------------------

   '(eshell-prompt ((t (:inherit mindre-default))))

   ;; --- Windows divider ----------------------------------------------
   `(window-divider                ((t (:foreground ,mindre-background))))
   '(window-divider-first-pixel    ((t (:inherit window-divider))))
   '(window-divider-last-pixel     ((t (:inherit window-divider))))
   `(vertical-border               ((t (:foreground ,mindre-faded))))

   ;; --- Tab bar ------------------------------------------------------
   '(tab-bar                       ((t (:inherit default))))
   '(tab-bar-tab                   ((t (:inherit default))))
   '(tab-bar-tab-inactive          ((t (:inherit mindre-faded))))
   '(tab-line                      ((t (:inherit default))))

   ;; --- Line numbers -------------------------------------------------
   '(line-number                  ((t (:inherit mindre-faded))))
   '(line-number-current-line     ((t (:inherit default))))
   `(line-number-major-tick       ((t (:inherit mindre-faded))))
   '(line-number-minor-tick       ((t (:inherit mindre-faded))))

   ;; --- Font lock ----------------------------------------------------
   '(font-lock-comment-face        ((t (:inherit mindre-faded))))
   '(font-lock-doc-face            ((t (:inherit mindre-faded))))
   `(font-lock-string-face         ((t (:foreground ,mindre-verbatim))))
   '(font-lock-constant-face       ((t (:inherit mindre-strong))))
   '(font-lock-warning-face        ((t (:inherit mindre-popout))))
   '(font-lock-function-name-face  ((t (:inherit mindre-strong))))
   `(font-lock-variable-name-face  ((t (:inherit mindre-strong))))
   '(font-lock-builtin-face        ((t (:inherit mindre-salient))))
   '(font-lock-type-face           ((t (:inherit mindre-salient))))
   '(font-lock-keyword-face        ((t (:inherit mindre-salient))))

   ;; --- Custom edit --------------------------------------------------
   '(widget-field                  ((t (:inherit mindre-subtle))))
   '(widget-button                 ((t (:inherit mindre-strong))))
   '(widget-single-line-field      ((t (:inherit mindre-subtle))))
   '(custom-group-subtitle         ((t (:inherit mindre-strong))))
   '(custom-group-tag              ((t (:inherit mindre-strong))))
   '(custom-group-tag-1            ((t (:inherit mindre-strong))))
   '(custom-comment                ((t (:inherit mindre-faded))))
   '(custom-comment-tag            ((t (:inherit mindre-faded))))
   '(custom-changed                ((t (:inherit mindre-salient))))
   '(custom-modified               ((t (:inherit mindre-salient))))
   '(custom-face-tag               ((t (:inherit mindre-strong))))
   '(custom-variable-tag           ((t (:inherit mindre-strong))))
   '(custom-invalid                ((t (:inherit mindre-popout))))
   '(custom-visibility             ((t (:inherit mindre-salient))))
   '(custom-state                  ((t (:inherit mindre-salient))))
   '(custom-link                   ((t (:inherit mindre-salient))))
   '(custom-variable-obsolete      ((t (:inherit mindre-faded))))

   ;; --- Company tooltip ----------------------------------------------
   '(company-tooltip                      ((t (:inherit mindre-subtle))))
   '(company-tooltip-mouse                ((t (:inherit mindre-faded-i))))
   '(company-tooltip-selection            ((t (:inherit mindre-salient-i))))

   '(company-scrollbar-fg                 ((t (:inherit mindre-default-i))))
   '(company-scrollbar-bg                 ((t (:inherit mindre-faded-i))))

   '(company-tooltip-common               ((t (:inherit mindre-strong))))
   '(company-tooltip-common-selection     ((t (:inherit mindre-salient-i
							:weight normal))))
   '(company-tooltip-annotation           ((t (:inherit mindre-default))))
   '(company-tooltip-annotation-selection ((t (:inherit mindre-subtle))))

   ;; --- Corfu  --------------------------------------------------------
   `(corfu-current                        ((t (:inherit highlight))))

   ;; --- Buttons ------------------------------------------------------
   `(custom-button
     ((t (:foreground ,mindre-faded
		      :background ,mindre-highlight
		      :box nil))))

   `(custom-button-mouse
     ((t (:foreground ,mindre-foreground
		      :background ,mindre-subtle
		      :box nil))))

   `(custom-button-pressed
     ((t (:foreground ,mindre-background
		      :background ,mindre-foreground
		      :box nil))

      )
     )

   ;; --- Packages -----------------------------------------------------
   '(package-description            ((t (:inherit mindre-default))))
   '(package-help-section-name      ((t (:inherit mindre-default))))
   '(package-name                   ((t (:inherit mindre-salient))))
   '(package-status-avail-obso      ((t (:inherit mindre-faded))))
   '(package-status-available       ((t (:inherit mindre-default))))
   '(package-status-built-in        ((t (:inherit mindre-salient))))
   '(package-status-dependency      ((t (:inherit mindre-salient))))
   '(package-status-disabled        ((t (:inherit mindre-faded))))
   '(package-status-external        ((t (:inherit mindre-default))))
   '(package-status-held            ((t (:inherit mindre-default))))
   '(package-status-incompat        ((t (:inherit mindre-faded))))
   '(package-status-installed       ((t (:inherit mindre-salient))))
   '(package-status-new             ((t (:inherit mindre-default))))
   '(package-status-unsigned        ((t (:inherit mindre-default))))

   ;; --- Info ---------------------------------------------------------
   '(info-node                      ((t (:inherit mindre-strong))))
   '(info-menu-header               ((t (:inherit mindre-strong))))
   '(info-header-node               ((t (:inherit mindre-default))))
   '(info-index-match               ((t (:inherit mindre-salient))))
   '(Info-quoted                    ((t (:inherit mindre-faded))))
   '(info-title-1                   ((t (:inherit mindre-strong))))
   '(info-title-2                   ((t (:inherit mindre-strong))))
   '(info-title-3                   ((t (:inherit mindre-strong))))
   '(info-title-4                   ((t (:inherit mindre-strong))))

   ;; --- Helpful ------------------------------------------------------
   '(helpful-heading                ((t (:inherit mindre-strong))))

   ;; --- EPA ----------------------------------------------------------
   '(epa-field-body                 ((t (:inherit mindre-default))))
   '(epa-field-name                 ((t (:inherit mindre-strong))))
   '(epa-mark                       ((t (:inherit mindre-salient))))
   '(epa-string                     ((t (:inherit mindre-popout))))
   '(epa-validity-disabled          ((t (:inherit mindre-faded))))
   '(epa-validity-high              ((t (:inherit mindre-strong))))
   '(epa-validity-medium            ((t (:inherit mindre-default))))
   '(epa-validity-low               ((t (:inherit mindre-faded))))

   ;; --- Eglot --------------------------------------------------------
   '(eglot-mode-line                ((t (:foreground "white"))))
   '(eglot-mode-line-none-face      ((t (:foreground "white"))))
   '(eglot-highlight-symbol-face    ((t (:inherit underline))))
   

   ;; --- Popup --------------------------------------------------------
   '(popup-face                       ((t (:inherit highlight))))
   '(popup-isearch-match              ((t (:inherit mindre-popout))))
   '(popup-menu-face                  ((t (:inherit mindre-subtle))))
   '(popup-menu-mouse-face            ((t (:inherit mindre-faded-i))))
   '(popup-menu-selection-face        ((t (:inherit mindre-salient-i))))
   '(popup-menu-summary-face          ((t (:inherit mindre-faded))))
   '(popup-scroll-bar-background-face ((t (:inherit mindre-subtle))))
   '(popup-scroll-bar-foreground-face ((t (:inherit mindre-subtle))))
   '(popup-summary-face               ((t (:inherit mindre-faded))))
   '(popup-tip-face                   ((t (:inherit mindre-popout-i))))

   ;; --- Diff ---------------------------------------------------------
   '(diff-header                    ((t (:inherit mindre-faded))))
   '(diff-file-header               ((t (:inherit mindre-strong))))
   '(diff-context                   ((t (:inherit mindre-default))))
   '(diff-removed                   ((t (:inherit mindre-faded))))
   '(diff-changed                   ((t (:inherit mindre-popout))))
   '(diff-added                     ((t (:inherit mindre-salient))))
   '(diff-refine-added              ((t (:inherit (mindre-salient
                                                   mindre-strong)))))
   '(diff-refine-changed            ((t (:inherit mindre-popout))))
   '(diff-refine-removed            ((t (:inherit mindre-faded
						  :strike-through t))))

   ;; --- Message ------------------------------------------------------
   '(message-cited-text-1           ((t (:inherit mindre-faded))))
   '(message-cited-text-2           ((t (:inherit mindre-faded))))
   '(message-cited-text-3           ((t (:inherit mindre-faded))))
   '(message-cited-text-4           ((t (:inherit mindre-faded))))
   '(message-cited-text             ((t (:inherit mindre-faded))))
   '(message-header-cc              ((t (:inherit mindre-default))))
   '(message-header-name            ((t (:inherit mindre-strong))))
   '(message-header-newsgroups      ((t (:inherit mindre-default))))
   '(message-header-other           ((t (:inherit mindre-default))))
   '(message-header-subject         ((t (:inherit mindre-salient))))
   '(message-header-to              ((t (:inherit mindre-salient))))
   '(message-header-xheader         ((t (:inherit mindre-default))))
   '(message-mml                    ((t (:inherit mindre-popout))))
   '(message-separator              ((t (:inherit mindre-faded))))


   ;; --- Outline ------------------------------------------------------
   '(outline-1                      ((t (:inherit mindre-strong))))
   '(outline-2                      ((t (:inherit mindre-strong))))
   '(outline-3                      ((t (:inherit mindre-strong))))
   '(outline-4                      ((t (:inherit mindre-strong))))
   '(outline-5                      ((t (:inherit mindre-strong))))
   '(outline-6                      ((t (:inherit mindre-strong))))
   '(outline-7                      ((t (:inherit mindre-strong))))
   '(outline-8                      ((t (:inherit mindre-strong))))

   ;; --- Orderless ------------------------------------------------------
   '(orderless-match-face-0         ((t (:inherit (mindre-strong bold)))))
   '(orderless-match-face-1         ((t (:inherit (mindre-strong bold)))))
   '(orderless-match-face-2         ((t (:inherit (mindre-strong bold)))))
   '(orderless-match-face-3         ((t (:inherit (mindre-strong bold)))))

   ;; --- Fly spell ----------------------------------------------------
   '(flyspell-duplicate             ((t (:inherit mindre-popout))))
   '(flyspell-incorrect             ((t (:inherit mindre-popout
						  :underline "#BF616A"))))

   ;; --- Fly make ----------------------------------------------------
   ;; TODO: Fix these
   `(flymake-error                  ((t (:foreground "#BF616A" :background nil))))
   `(flymake-warning                ((t (:foreground "#EBCB8B" :background nil))))
   `(flymake-note                   ((t (:foreground "orange" :background nil))))
   `(compilation-error              ((t (:foreground "#BF616A" :background nil))))
   `(compilation-warning            ((t (:foreground "#EBCB8B" :background nil))))
   `(compilation-mode-line-run      ((t (:inherit mindre-foreground))))

   ;; --- Org agenda ---------------------------------------------------
   '(org-agenda-calendar-event      ((t (:inherit mindre-default))))
   '(org-agenda-calendar-sexp       ((t (:inherit mindre-salient))))
   '(org-agenda-clocking            ((t (:inherit mindre-faded))))
   '(org-agenda-column-dateline     ((t (:inherit mindre-faded))))
   '(org-agenda-current-time        ((t (:inherit mindre-strong))))
   '(org-agenda-date                ((t (:inherit mindre-salient))))
   '(org-agenda-date-today          ((t (:inherit (mindre-salient
                                                   mindre-strong)))))
   '(org-agenda-date-weekend        ((t (:inherit mindre-faded))))
   '(org-agenda-diary               ((t (:inherit mindre-faded))))
   '(org-agenda-dimmed-todo-face    ((t (:inherit mindre-faded))))
   '(org-agenda-done                ((t (:inherit mindre-faded))))
   '(org-agenda-filter-category     ((t (:inherit mindre-faded))))
   '(org-agenda-filter-effort       ((t (:inherit mindre-faded))))
   '(org-agenda-filter-regexp       ((t (:inherit mindre-faded))))
   '(org-agenda-filter-tags         ((t (:inherit mindre-faded))))
   '(org-agenda-property-face       ((t (:inherit mindre-faded))))
   '(org-agenda-restriction-lock    ((t (:inherit mindre-faded))))
   '(org-agenda-structure           ((t (:inherit mindre-strong))))

   ;; --- Org ----------------------------------------------------------
   '(org-archived                            ((t (:inherit mindre-faded))))
   '(org-block                               ((t (:inherit (mindre-block fixed-pitch)))))
   '(org-block-begin-line                    ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-block-end-line                      ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-checkbox                            ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-checkbox-statistics-done            ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-checkbox-statistics-todo            ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-clock-overlay                       ((t (:inherit mindre-faded))))
   '(org-code                                ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-column                              ((t (:inherit mindre-faded))))
   '(org-column-title                        ((t (:inherit mindre-faded))))
   '(org-date                                ((t (:inherit mindre-faded))))
   '(org-date-selected                       ((t (:inherit mindre-faded))))
   '(org-default                             ((t (:inherit mindre-faded))))
   '(org-document-info                       ((t (:inherit mindre-faded))))
   '(org-document-info-keyword               ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-document-title                      ((t (:inherit mindre-faded))))
   '(org-done                                ((t (:inherit mindre-faded))))
   '(org-drawer                              ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-ellipsis                            ((t (:inherit mindre-faded))))
   '(org-footnote                            ((t (:inherit mindre-faded))))
   '(org-formula                             ((t (:inherit mindre-faded))))
   '(org-headline-done                       ((t (:foreground "#6a7276"))))
   '(org-hide                                ((t (:inherit mindre-subtle-i))))
   '(org-indent                              ((t (:inherit mindre-subtle-i))))
   '(org-latex-and-related                   ((t (:inherit mindre-faded))))
   '(org-level-1                             ((t (:inherit mindre-strong))))
   '(org-level-2                             ((t (:inherit mindre-strong))))
   '(org-level-3                             ((t (:inherit mindre-strong))))
   '(org-level-4                             ((t (:inherit mindre-strong))))
   '(org-level-5                             ((t (:inherit mindre-strong))))
   '(org-level-6                             ((t (:inherit mindre-strong))))
   '(org-level-7                             ((t (:inherit mindre-strong))))
   '(org-level-8                             ((t (:inherit mindre-strong))))
   '(org-link                                ((t (:inherit mindre-salient))))
   '(org-list-dt                             ((t (:inherit mindre-faded))))
   '(org-macro                               ((t (:inherit mindre-faded))))
   '(org-meta-line                           ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-mode-line-clock                     ((t (:inherit mindre-faded))))
   '(org-mode-line-clock-overrun             ((t (:inherit mindre-faded))))
   '(org-priority                            ((t (:inherit mindre-faded))))
   '(org-property-value                      ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-quote                               ((t (:inherit mindre-faded))))
   '(org-scheduled                           ((t (:inherit mindre-faded))))
   '(org-scheduled-previously                ((t (:inherit mindre-faded))))
   '(org-scheduled-today                     ((t (:inherit mindre-faded))))
   '(org-sexp-date                           ((t (:inherit mindre-faded))))
   '(org-special-keyword                     ((t (:inherit (mindre-faded fixed-pitch)))))
   '(org-table                               ((t (:inherit (mindre-default fixed-pitch)))))
   '(org-tag                                 ((t (:inherit mindre-popout))))
   '(org-tag-group                           ((t (:inherit mindre-faded))))
   '(org-target                              ((t (:inherit mindre-faded))))
   '(org-time-grid                           ((t (:inherit mindre-faded))))
   '(org-todo                                ((t (:inherit (mindre-salient mindre-strong)))))
   '(org-upcoming-deadline                   ((t (:inherit mindre-default))))
   '(org-verbatim                            ((t (:inherit mindre-popout))))
   '(org-verse                               ((t (:inherit mindre-faded))))
   '(org-warning                             ((t (:inherit mindre-popout))))

   ;; --- Mu4e ---------------------------------------------------------
   '(mu4e-attach-number-face                ((t (:inherit mindre-strong))))
   '(mu4e-cited-1-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-2-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-3-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-4-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-5-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-6-face                      ((t (:inherit mindre-faded))))
   '(mu4e-cited-7-face                      ((t (:inherit mindre-faded))))
   '(mu4e-compose-header-face               ((t (:inherit mindre-faded))))
   '(mu4e-compose-separator-face            ((t (:inherit mindre-faded))))
   '(mu4e-contact-face                      ((t (:inherit mindre-salient))))
   '(mu4e-context-face                      ((t (:inherit mindre-faded))))
   '(mu4e-draft-face                        ((t (:inherit mindre-faded))))
   '(mu4e-flagged-face                      ((t (:inherit mindre-popout))))
   '(mu4e-footer-face                       ((t (:inherit mindre-faded))))
   '(mu4e-forwarded-face                    ((t (:inherit mindre-default))))
   '(mu4e-header-face                       ((t (:inherit mindre-default))))
   '(mu4e-header-highlight-face             ((t (:inherit highlight))))
   '(mu4e-header-key-face                   ((t (:inherit mindre-strong))))
   '(mu4e-header-marks-face                 ((t (:inherit mindre-faded))))
   '(mu4e-header-title-face                 ((t (:inherit mindre-strong))))
   '(mu4e-header-value-face                 ((t (:inherit mindre-default))))
   '(mu4e-highlight-face                    ((t (:inherit mindre-popout))))
   '(mu4e-link-face                         ((t (:inherit mindre-salient))))
   '(mu4e-modeline-face                     ((t (:inherit mindre-faded))))
   '(mu4e-moved-face                        ((t (:inherit mindre-faded))))
   '(mu4e-ok-face                           ((t (:inherit mindre-faded))))
   '(mu4e-region-code                       ((t (:inherit mindre-faded))))
   '(mu4e-replied-face                      ((t (:inherit mindre-default))))
   '(mu4e-special-header-value-face         ((t (:inherit mindre-default))))
   '(mu4e-system-face                       ((t (:inherit mindre-faded))))
   '(mu4e-title-face                        ((t (:inherit mindre-strong))))
   '(mu4e-trashed-face                      ((t (:inherit mindre-faded))))
   '(mu4e-unread-face                       ((t (:inherit mindre-strong))))
   '(mu4e-url-number-face                   ((t (:inherit mindre-faded))))
   '(mu4e-view-body-face                    ((t (:inherit mindre-default))))
   '(mu4e-warning-face                      ((t (:inherit mindre-popout))))

   ;; --- Notmuch -------------------------------------------------------
   `(notmuch-crypto-decryption            ((t (:inherit mindre-strong))))
   `(notmuch-crypto-part-header           ((t (:inherit mindre-strong))))
   `(notmuch-crypto-signature-bad         ((t (:inherit mindre-error))))
   `(notmuch-crypto-signature-good        ((t (:inherit mindre-ok))))
   `(notmuch-crypto-signature-good-key    ((t (:inherit mindre-ok))))
   `(notmuch-crypto-signature-unknown     ((t (:inherit mindre-warning))))
   `(notmuch-search-count                 ((t (:inherit mindre-faded))))
   `(notmuch-search-unread-face           ((t (:inherit mindre-strong))))
   `(notmuch-search-date                  ((t (:inherit mindre-default))))
   `(notmuch-search-matching-authors      ((t (:inherit mindre-salient))))
   `(notmuch-search-non-matching-authors  ((t (:inherit mindre-faded))))
   `(notmuch-search-subject               ((t (:inherit mindre-default))))
   `(notmuch-tag-added                    ((t (:inherit mindre-verbatim :underline t))))
   `(notmuch-tag-deleted                  ((t (:inherit mindre-verbatim :strike-through t))))
   `(notmuch-tag-face                     ((t (:inherit mindre-verbatim))))
   `(notmuch-tag-flagged                  ((t (:inherit mindre-strong))))
   `(notmuch-tag-unread                   ((t (:inherit mindre-strong))))
   `(notmuch-tree-match-author-face       ((t (:inherit mindre-salient))))
   `(notmuch-tree-match-subject-face      ((t (:inherit mindre-default))))
   `(notmuch-tree-match-date-face         ((t (:inherit mindre-default))))
   `(notmuch-tree-match-tag-face          ((t (:inherit mindre-verbatim))))
   `(notmuch-tree-no-match-face           ((t (:inherit mindre-faded))))
   `(notmuch-tree-no-match-date-face      ((t (:inherit mindre-default))))

   ;; --- Elfeed -------------------------------------------------------
   '(elfeed-log-date-face                   ((t (:inherit mindre-faded))))
   '(elfeed-log-info-level-face             ((t (:inherit mindre-default))))
   '(elfeed-log-debug-level-face            ((t (:inherit mindre-default))))
   '(elfeed-log-warn-level-face             ((t (:inherit mindre-popout))))
   '(elfeed-log-error-level-face            ((t (:inherit mindre-popout))))
   '(elfeed-search-tag-face                 ((t (:inherit mindre-verbatim))))
   '(elfeed-search-date-face                ((t (:inherit mindre-default))))
   '(elfeed-search-feed-face                ((t (:inherit mindre-salient))))
   '(elfeed-search-filter-face              ((t (:inherit mindre-faded))))
   '(elfeed-search-last-update-face         ((t (:inherit mindre-salient))))
   '(elfeed-search-title-face               ((t (:inherit mindre-default))))
   '(elfeed-search-unread-count-face        ((t (:inherit mindre-strong))))
   '(elfeed-search-unread-title-face        ((t (:inherit mindre-strong))))

   ;; --- Ivy --------------------------------------------------------
   `(ivy-minibuffer-match-face-1   ((t (:inherit mindre-popout))))
   `(ivy-minibuffer-match-face-2   ((t (:inherit mindre-popout))))
   `(ivy-minibuffer-match-face-3   ((t (:inherit mindre-popout))))
   `(ivy-minibuffer-match-face-4   ((t (:inherit mindre-popout))))

   ;; --- Orderless  --------------------------------------------------------
   `(orderless-match-face-0 ((t (:inherit mindre-popout))))
   `(orderless-match-face-1 ((t (:inherit mindre-popout))))
   `(orderless-match-face-2 ((t (:inherit mindre-popout))))
   `(orderless-match-face-3 ((t (:inherit mindre-popout))))

   ;; --- Deft --------------------------------------------------------
   '(deft-filter-string-error-face         ((t (:inherit mindre-popout))))
   '(deft-filter-string-face               ((t (:inherit mindre-default))))
   '(deft-header-face                      ((t (:inherit mindre-salient))))
   '(deft-separator-face                   ((t (:inherit mindre-faded))))
   '(deft-summary-face                     ((t (:inherit mindre-faded))))
   '(deft-time-face                        ((t (:inherit mindre-salient))))
   '(deft-title-face                       ((t (:inherit mindre-strong))))

   ;; --- Restructured text -------------------------------------------
   '(rst-adornment                         ((t (:inherit mindre-faded))))
   '(rst-block                             ((t (:inherit mindre-default))))
   '(rst-comment                           ((t (:inherit mindre-faded))))
   '(rst-definition                        ((t (:inherit mindre-salient))))
   '(rst-directive                         ((t (:inherit mindre-salient))))
   '(rst-emphasis1                         ((t (:inherit mindre-faded))))
   '(rst-emphasis2                         ((t (:inherit mindre-strong))))
   '(rst-external                          ((t (:inherit mindre-salient))))
   '(rst-level-1                           ((t (:inherit mindre-strong))))
   '(rst-level-2                           ((t (:inherit mindre-strong))))
   '(rst-level-3                           ((t (:inherit mindre-strong))))
   '(rst-level-4                           ((t (:inherit mindre-strong))))
   '(rst-level-5                           ((t (:inherit mindre-strong))))
   '(rst-level-6                           ((t (:inherit mindre-strong))))
   '(rst-literal                           ((t (:inherit mindre-salient))))
   '(rst-reference                         ((t (:inherit mindre-salient))))
   '(rst-transition                        ((t (:inherit mindre-default))))

   ;; --- Markdown ----------------------------------------------------
   '(markdown-blockquote-face              ((t (:inherit mindre-default))))
   '(markdown-bold-face                    ((t (:inherit mindre-strong))))
   '(markdown-code-face                    ((t (:inherit mindre-default))))
   '(markdown-comment-face                 ((t (:inherit mindre-faded))))
   '(markdown-footnote-marker-face         ((t (:inherit mindre-default))))
   '(markdown-footnote-text-face           ((t (:inherit mindre-default))))
   '(markdown-gfm-checkbox-face            ((t (:inherit mindre-default))))
   '(markdown-header-delimiter-face        ((t (:inherit mindre-faded))))
   '(markdown-header-face                  ((t (:inherit mindre-strong))))
   '(markdown-header-face-1                ((t (:inherit mindre-strong))))
   '(markdown-header-face-2                ((t (:inherit mindre-strong))))
   '(markdown-header-face-3                ((t (:inherit mindre-strong))))
   '(markdown-header-face-4                ((t (:inherit mindre-strong))))
   '(markdown-header-face-5                ((t (:inherit mindre-strong))))
   '(markdown-header-face-6                ((t (:inherit mindre-strong))))
   '(markdown-header-rule-face             ((t (:inherit mindre-default))))
   '(markdown-highlight-face               ((t (:inherit mindre-default))))
   '(markdown-hr-face                      ((t (:inherit mindre-default))))
   '(markdown-html-attr-name-face          ((t (:inherit mindre-default))))
   '(markdown-html-attr-value-face         ((t (:inherit mindre-default))))
   '(markdown-html-entity-face             ((t (:inherit mindre-default))))
   '(markdown-html-tag-delimiter-face      ((t (:inherit mindre-default))))
   '(markdown-html-tag-name-face           ((t (:inherit mindre-default))))
   '(markdown-inline-code-face             ((t (:inherit mindre-popout))))
   '(markdown-italic-face                  ((t (:inherit mindre-faded))))
   '(markdown-language-info-face           ((t (:inherit mindre-default))))
   '(markdown-language-keyword-face        ((t (:inherit mindre-default))))
   '(markdown-line-break-face              ((t (:inherit mindre-default))))
   '(markdown-link-face                    ((t (:inherit mindre-salient))))
   '(markdown-link-title-face              ((t (:inherit mindre-default))))
   '(markdown-list-face                    ((t (:inherit mindre-faded))))
   '(markdown-markup-face                  ((t (:inherit mindre-faded))))
   '(markdown-math-face                    ((t (:inherit mindre-default))))
   '(markdown-metadata-key-face            ((t (:inherit mindre-faded))))
   '(markdown-metadata-value-face          ((t (:inherit mindre-faded))))
   '(markdown-missing-link-face            ((t (:inherit mindre-default))))
   '(markdown-plain-url-face               ((t (:inherit mindre-default))))
   '(markdown-pre-face                     ((t (:inherit mindre-default))))
   '(markdown-reference-face               ((t (:inherit mindre-salient))))
   '(markdown-strike-through-face          ((t (:inherit mindre-faded))))
   '(markdown-table-face                   ((t (:inherit mindre-default))))
   '(markdown-url-face                     ((t (:inherit mindre-salient))))

   ;; --- Terminal ----------------------------------------------------
   '(term-bold                             ((t (:inherit mindre-strong))))
   '(term-color-black                      ((t (:inherit default))))
   '(term-color-blue                       ((t (:foreground "#42A5F5"
						:background "#BBDEFB"))))
   '(term-color-cyan                       ((t (:foreground "#26C6DA"
						:background "#B2EBF2"))))
   '(term-color-green                      ((t (:foreground "#66BB6A"
						:background "#C8E6C9"))))
   '(term-color-magenta                    ((t (:foreground "#AB47BC"
						:background "#E1BEE7"))))
   '(term-color-red                        ((t (:foreground "#EF5350"
						:background "#FFCDD2"))))
   '(term-color-yellow                     ((t (:foreground "#966544"
						:background "#FFF9C4"))))

   ;; --- Haskell ----------------------------------------------------
   '(haskell-font-lock-keywords ((t (:foreground "#7b71a9"))))
   `(haskell-constructor-face   ((t (:foreground ,mindre-salient-alt))))
   `(font-lock-type-face        ((t (:foreground ,mindre-salient))))
   `(haskell-pragma-face        ((t (:foreground ,mindre-highlight))))
   `(haskell-operator-face      ((t (:inherit mindre-default))))

   ;; --- Nix ----------------------------------------------------
   `(nix-attribute-face ((t (:foreground ,mindre-foreground :bold nil))))

   ;; --- Sh ----------------------------------------------------
   `(sh-quoted-exec ((t (:foreground ,mindre-salient-alt))))
   ;;
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mindre)
