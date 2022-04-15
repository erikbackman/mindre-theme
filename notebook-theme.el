;;; notebook-theme.el --- notebook -*- lexical-binding: t -*-
;; ---------------------------------------------------------------------
;; GNU Emacs / smooth white
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

(deftheme notebook
  "notebook Theme")

(defgroup notebook nil
  "notebook")

(defcustom notebook-background "#F5F5F5"
  "Default background color"
  :type 'color :group 'notebook)

(defcustom notebook-background-dark-1 "#2E3440"
  "Default dark background"
  :type 'color :group 'notebook)

(defcustom notebook-background-dark-2 "#4C566A"
  "Lighter dark background "
  :type 'color :group 'notebook)

(defcustom notebook-foreground "#37474F"
  "Default foreground color"
  :type 'color :group 'notebook)

(defcustom notebook-highlight "#CFD8DC"
  "Highlight color is used to highlight part of the screen."
  :type 'color :group 'notebook)

(defcustom notebook-highlight-alt "#ECEFF1"
  "Lighter highlight color used to highlight part of the screen."
  :type 'color :group 'notebook)

(defcustom notebook-yellow "#966544"
  "Default yellow color"
  :type 'color :group 'notebook)

(defcustom notebook-ok "#966544"
  "Default yellow color"
  :type 'color :group 'notebook)

(defcustom notebook-warning "#EBCB8B"
  "Default yellow color"
  :type 'color :group 'notebook)

(defcustom notebook-error "#BF616A"
  "Default yellow color"
  :type 'color :group 'notebook)

(defcustom notebook-subtle "#ECEFF1"
  "Subtle color is used to suggest a physical area on the screen."
  :type 'color :group 'notebook)

(defcustom notebook-faded "#B0BEC5"
  "Faded face is for information that are less important."
  :type 'color :group 'notebook)

(defcustom notebook-salient "#673AB7"
  "Salient color is used for information that are important."
  :type 'color :group 'notebook)

(defcustom notebook-salient-alt "#00625D"
  "Alt Salient color is used for information that are important"
  :type 'color :group 'notebook)

(defcustom notebook-verbatim "#62543E"
  "Color used for things like strings."
  :type 'color :group 'notebook)

(defcustom notebook-strong "#161c20"
  "Strong color is used for information of a structural nature."
  :type 'color :group 'notebook)

(defcustom notebook-popout "#000"
  "Popout colour is used for information that needs attention."
  :type 'color :group 'notebook)

(defcustom notebook-critical "#BF616A"
  "Critical face is for information that requires immediate action."
  :type 'color :group 'notebook)

(defface notebook-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
  :group nil)

(defface notebook-critical-i nil
  "Critical face inversed." :group nil)

(defface notebook-popout nil
  "Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
  :group nil)

(defface notebook-popout-i nil
  "Popout face inversed." :group nil)

(defface notebook-strong nil
  "Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
  :group nil)

(defface notebook-strong-i nil
  "Strong face inversed." :group nil)

(defface notebook-salient nil
  "Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
  :group nil)

(defface notebook-salient-i nil
  "Strong face inversed." :group nil)

(defface notebook-faded nil
  "Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
  :group nil)

(defface notebook-faded-i nil
  "Faded face inversed." :group nil)

(defface notebook-subtle nil
  "Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
  :group nil)

(defface notebook-subtle-i nil
  "Subtle face inversed." :group nil)

(defface notebook-default nil
  "Default face." :group nil)

(defface notebook-default-i nil
  "Default face inversed." :group nil)

(defface notebook-highlight nil
  "Default highligt face."
  :group nil)

(defface notebook-block nil
  "Default block face"
  :group nil)

(defvar notebook-after-load-hook nil
  "Hook run after theme has loaded.")

(defun notebook ()
  "notebook theme"
  (interactive)
  (set-foreground-color notebook-foreground)
  (set-background-color notebook-background)
  (load-theme 'notebook t)
  (run-hooks 'notebook-after-load-hook))

(let ((light     '((background light)))
      (dark      '((background dark)))
      (tty-light '((type tty) (background light)))
      (tty-dark  '((type tty) (background dark))))

  ;; --- Faces ---------------------------------------------------------
  (custom-theme-set-faces
   'notebook

   ;; --- Base ---------------------------------------------------------
   `(cursor ((t (:foreground ,notebook-background
			     :background ,notebook-foreground))
             ))

   `(default ((t (:background ,notebook-background
	  		      :foreground ,notebook-foreground))))

   `(highlight ((t (:background ,notebook-highlight))))

   `(notebook-subtle ((t (:background ,notebook-subtle))))

   `(notebook-subtle-i ((t (:foreground ,notebook-subtle))))

   `(notebook-faded ((t (:foreground ,notebook-faded))))

   `(notebook-faded-i ((t (:foreground ,notebook-background
					   :background ,notebook-faded))))

   `(notebook-default ((t (:foreground ,notebook-foreground))))

   `(notebook-default-i ((t (:foreground ,notebook-background
					     :background ,notebook-foreground))))


   `(notebook-salient ((t (:foreground ,notebook-salient))))

   `(notebook-salient-i ((t (:foreground ,notebook-background
					     :background ,notebook-salient))))
   `(notebook-strong   ((t (:foreground ,notebook-strong))))
   `(notebook-strong-i ((t (:foreground ,notebook-background
					    :background ,notebook-strong
					    :weight bold))))

   `(notebook-popout ((t (:foreground ,notebook-popout))))

   `(notebook-popout-i ((t (:foreground ,notebook-background
					    :background ,notebook-popout))))

   `(notebook-critical ((t (:foreground ,notebook-background
					    :background ,notebook-critical))))

   `(notebook-critical-i ((t (:foreground ,notebook-critical
					      ;; :background ,notebook-background
					      ))))

   `(notebook-block ((t (:background "#f2f2f2"
					 :foreground ,notebook-foreground))))
   ;; --- Header & mode line -------------------------------------------

   `(mode-line ((t ( :foreground "white"
		     :background ,notebook-background-dark-1
                     :box (:line-width 1 :color ,notebook-background-dark-2 :style nil) ))))

   `(mode-line-highlight ((t (:inherit nil :background nil
				       :box nil))))
   `(mode-line-buffer-id ((t (:weight regular :background nil))))
   `(mode-line-emphasis  ((t (:weight regular :background nil))))
   `(mode-line-inactive ((t ( :foreground "white"
			      :background ,notebook-background-dark-2
			      :box (:line-width 1 :color ,notebook-background-dark-2 :style nil) ))))

   `(header-line ((t (:foreground ,notebook-foreground
				  :background ,notebook-subtle
				  :inherit nil
				  :box nil))))

   ;; --- Structural ---------------------------------------------------
   '(bold                        ((t (:inherit notebook-strong :weight semibold))))
   '(italic                      ((t (:slant italic))))
   '(italic                      ((t (:inherit notebook-faded))))
   '(bold-italic                 ((t (:inherit notebook-strong))))
   '(region                      ((t (:inherit highlight))))
   '(fringe                      ((t (:inherit (notebook-faded)))))
   '(hl-line                     ((t (:inherit highlight))))
   '(link                        ((t (:inherit notebook-salient))))
   '(fixed-pitch                 ((t (:inherit default))))
   '(fixed-pitch-serif           ((t (:inherit default))))

   ;; --- Semantic -----------------------------------------------------
   '(shadow                        ((t (:inherit notebook-faded))))
   '(success                       ((t (:inherit notebook-salient))))
   '(warning                       ((t (:inherit notebook-warning))))
   '(error                         ((t (:inherit notebook-critical))))
   '(match                         ((t (:inherit notebook-popout))))

   ;; --- General ------------------------------------------------------
   '(buffer-menu-buffer            ((t (:inherit notebook-strong))))
   '(minibuffer-prompt             ((t (:inherit notebook-strong))))
   '(isearch                       ((t (:inherit notebook-strong))))
   '(isearch-fail                  ((t (:inherit notebook-faded))))
   '(show-paren-match              ((t (:inherit nil :weight bold :foreground "#AB47BC"))))
   '(show-paren-mismatch           ((t (:inherit notebook-critical))))
   '(lazy-highlight                ((t (:inherit notebook-subtle))))
   '(trailing-whitespace           ((t (:inherit notebook-subtle))))
   '(secondary-selection           ((t (:inherit notebook-subtle))))
   '(completions-annotations       ((t (:inherit notebook-faded))))
   '(completions-common-part       ((t (:inherit notebook-faded))))
   '(completions-first-difference  ((t (:inherit default))))
   '(tooltip                       ((t (:inherit notebook-subtle))))
   '(read-multiple-choice-face     ((t (:inherit notebook-strong))))
   '(nobreak-hyphen                ((t (:inherit notebook-popout))))
   '(nobreak-space                 ((t (:inherit notebook-popout))))
   '(help-argument-name            ((t (:inherit notebook-faded))))
   '(tabulated-list-fake-header    ((t (:inherit notebook-strong))))
   '(tool-bar                      ((t (:inherit notebook-faded-i))))

   ;; --- TTY faces ----------------------------------------------------
   '(tty-menu-disabled-face        ((t (:inherit notebook-faded-i))))
   '(tty-menu-enabled-face         ((t (:inherit notebook-default-i))))
   '(tty-menu-selected-face        ((t (:inherit notebook-salient-i))))

   ;; --- Eshell ----------------------------------------------------

   '(eshell-prompt ((t (:inherit notebook-default))))

   ;; --- Windows divider ----------------------------------------------
   `(window-divider                ((t (:foreground ,notebook-background))))
   '(window-divider-first-pixel    ((t (:inherit window-divider))))
   '(window-divider-last-pixel     ((t (:inherit window-divider))))
   `(vertical-border               ((t (:foreground ,notebook-faded))))

   ;; --- Tab bar ------------------------------------------------------
   '(tab-bar                       ((t (:inherit default))))
   '(tab-bar-tab                   ((t (:inherit default))))
   '(tab-bar-tab-inactive          ((t (:inherit notebook-faded))))
   '(tab-line                      ((t (:inherit default))))

   ;; --- Line numbers -------------------------------------------------
   '(line-number                  ((t (:inherit notebook-faded))))
   '(line-number-current-line     ((t (:inherit default))))
   `(line-number-major-tick       ((t (:inherit notebook-faded))))
   '(line-number-minor-tick       ((t (:inherit notebook-faded))))

   ;; --- Font lock ----------------------------------------------------
   '(font-lock-comment-face        ((t (:inherit notebook-faded))))
   '(font-lock-doc-face            ((t (:inherit notebook-faded))))
   `(font-lock-string-face         ((t (:foreground ,notebook-verbatim))))
   '(font-lock-constant-face       ((t (:inherit notebook-strong))))
   '(font-lock-warning-face        ((t (:inherit notebook-popout))))
   '(font-lock-function-name-face  ((t (:inherit notebook-strong))))
   `(font-lock-variable-name-face  ((t (:inherit notebook-strong))))
   '(font-lock-builtin-face        ((t (:inherit notebook-salient))))
   '(font-lock-type-face           ((t (:inherit notebook-salient))))
   '(font-lock-keyword-face        ((t (:inherit notebook-salient))))

   ;; --- Custom edit --------------------------------------------------
   '(widget-field                  ((t (:inherit notebook-subtle))))
   '(widget-button                 ((t (:inherit notebook-strong))))
   '(widget-single-line-field      ((t (:inherit notebook-subtle))))
   '(custom-group-subtitle         ((t (:inherit notebook-strong))))
   '(custom-group-tag              ((t (:inherit notebook-strong))))
   '(custom-group-tag-1            ((t (:inherit notebook-strong))))
   '(custom-comment                ((t (:inherit notebook-faded))))
   '(custom-comment-tag            ((t (:inherit notebook-faded))))
   '(custom-changed                ((t (:inherit notebook-salient))))
   '(custom-modified               ((t (:inherit notebook-salient))))
   '(custom-face-tag               ((t (:inherit notebook-strong))))
   '(custom-variable-tag           ((t (:inherit notebook-strong))))
   '(custom-invalid                ((t (:inherit notebook-popout))))
   '(custom-visibility             ((t (:inherit notebook-salient))))
   '(custom-state                  ((t (:inherit notebook-salient))))
   '(custom-link                   ((t (:inherit notebook-salient))))
   '(custom-variable-obsolete      ((t (:inherit notebook-faded))))

   ;; --- Company tooltip ----------------------------------------------
   '(company-tooltip                      ((t (:inherit notebook-subtle))))
   '(company-tooltip-mouse                ((t (:inherit notebook-faded-i))))
   '(company-tooltip-selection            ((t (:inherit notebook-salient-i))))

   '(company-scrollbar-fg                 ((t (:inherit notebook-default-i))))
   '(company-scrollbar-bg                 ((t (:inherit notebook-faded-i))))

   '(company-tooltip-common               ((t (:inherit notebook-strong))))
   '(company-tooltip-common-selection     ((t (:inherit notebook-salient-i
							:weight normal))))
   '(company-tooltip-annotation           ((t (:inherit notebook-default))))
   '(company-tooltip-annotation-selection ((t (:inherit notebook-subtle))))

   ;; --- Corfu  --------------------------------------------------------
   `(corfu-current                        ((t (:inherit highlight))))

   ;; --- Buttons ------------------------------------------------------
   `(custom-button
     ((t (:foreground ,notebook-faded
		      :background ,notebook-highlight
		      :box nil))))

   `(custom-button-mouse
     ((t (:foreground ,notebook-foreground
		      :background ,notebook-subtle
		      :box nil))))

   `(custom-button-pressed
     ((t (:foreground ,notebook-background
		      :background ,notebook-foreground
		      :box nil))

      )
     )

   ;; --- Packages -----------------------------------------------------
   '(package-description            ((t (:inherit notebook-default))))
   '(package-help-section-name      ((t (:inherit notebook-default))))
   '(package-name                   ((t (:inherit notebook-salient))))
   '(package-status-avail-obso      ((t (:inherit notebook-faded))))
   '(package-status-available       ((t (:inherit notebook-default))))
   '(package-status-built-in        ((t (:inherit notebook-salient))))
   '(package-status-dependency      ((t (:inherit notebook-salient))))
   '(package-status-disabled        ((t (:inherit notebook-faded))))
   '(package-status-external        ((t (:inherit notebook-default))))
   '(package-status-held            ((t (:inherit notebook-default))))
   '(package-status-incompat        ((t (:inherit notebook-faded))))
   '(package-status-installed       ((t (:inherit notebook-salient))))
   '(package-status-new             ((t (:inherit notebook-default))))
   '(package-status-unsigned        ((t (:inherit notebook-default))))

   ;; --- Info ---------------------------------------------------------
   '(info-node                      ((t (:inherit notebook-strong))))
   '(info-menu-header               ((t (:inherit notebook-strong))))
   '(info-header-node               ((t (:inherit notebook-default))))
   '(info-index-match               ((t (:inherit notebook-salient))))
   '(Info-quoted                    ((t (:inherit notebook-faded))))
   '(info-title-1                   ((t (:inherit notebook-strong))))
   '(info-title-2                   ((t (:inherit notebook-strong))))
   '(info-title-3                   ((t (:inherit notebook-strong))))
   '(info-title-4                   ((t (:inherit notebook-strong))))

   ;; --- Helpful ------------------------------------------------------
   '(helpful-heading                ((t (:inherit notebook-strong))))

   ;; --- EPA ----------------------------------------------------------
   '(epa-field-body                 ((t (:inherit notebook-default))))
   '(epa-field-name                 ((t (:inherit notebook-strong))))
   '(epa-mark                       ((t (:inherit notebook-salient))))
   '(epa-string                     ((t (:inherit notebook-popout))))
   '(epa-validity-disabled          ((t (:inherit notebook-faded))))
   '(epa-validity-high              ((t (:inherit notebook-strong))))
   '(epa-validity-medium            ((t (:inherit notebook-default))))
   '(epa-validity-low               ((t (:inherit notebook-faded))))

   ;; --- Eglot --------------------------------------------------------
   '(eglot-mode-line                ((t (:foreground "white"))))
   '(eglot-mode-line-none-face      ((t (:foreground "white"))))
   '(eglot-highlight-symbol-face    ((t (:inherit underline))))
   

   ;; --- Popup --------------------------------------------------------
   '(popup-face                       ((t (:inherit highlight))))
   '(popup-isearch-match              ((t (:inherit notebook-popout))))
   '(popup-menu-face                  ((t (:inherit notebook-subtle))))
   '(popup-menu-mouse-face            ((t (:inherit notebook-faded-i))))
   '(popup-menu-selection-face        ((t (:inherit notebook-salient-i))))
   '(popup-menu-summary-face          ((t (:inherit notebook-faded))))
   '(popup-scroll-bar-background-face ((t (:inherit notebook-subtle))))
   '(popup-scroll-bar-foreground-face ((t (:inherit notebook-subtle))))
   '(popup-summary-face               ((t (:inherit notebook-faded))))
   '(popup-tip-face                   ((t (:inherit notebook-popout-i))))

   ;; --- Diff ---------------------------------------------------------
   '(diff-header                    ((t (:inherit notebook-faded))))
   '(diff-file-header               ((t (:inherit notebook-strong))))
   '(diff-context                   ((t (:inherit notebook-default))))
   '(diff-removed                   ((t (:inherit notebook-faded))))
   '(diff-changed                   ((t (:inherit notebook-popout))))
   '(diff-added                     ((t (:inherit notebook-salient))))
   '(diff-refine-added              ((t (:inherit (notebook-salient
                                                   notebook-strong)))))
   '(diff-refine-changed            ((t (:inherit notebook-popout))))
   '(diff-refine-removed            ((t (:inherit notebook-faded
						  :strike-through t))))

   ;; --- Message ------------------------------------------------------
   '(message-cited-text-1           ((t (:inherit notebook-faded))))
   '(message-cited-text-2           ((t (:inherit notebook-faded))))
   '(message-cited-text-3           ((t (:inherit notebook-faded))))
   '(message-cited-text-4           ((t (:inherit notebook-faded))))
   '(message-cited-text             ((t (:inherit notebook-faded))))
   '(message-header-cc              ((t (:inherit notebook-default))))
   '(message-header-name            ((t (:inherit notebook-strong))))
   '(message-header-newsgroups      ((t (:inherit notebook-default))))
   '(message-header-other           ((t (:inherit notebook-default))))
   '(message-header-subject         ((t (:inherit notebook-salient))))
   '(message-header-to              ((t (:inherit notebook-salient))))
   '(message-header-xheader         ((t (:inherit notebook-default))))
   '(message-mml                    ((t (:inherit notebook-popout))))
   '(message-separator              ((t (:inherit notebook-faded))))


   ;; --- Outline ------------------------------------------------------
   '(outline-1                      ((t (:inherit notebook-strong))))
   '(outline-2                      ((t (:inherit notebook-strong))))
   '(outline-3                      ((t (:inherit notebook-strong))))
   '(outline-4                      ((t (:inherit notebook-strong))))
   '(outline-5                      ((t (:inherit notebook-strong))))
   '(outline-6                      ((t (:inherit notebook-strong))))
   '(outline-7                      ((t (:inherit notebook-strong))))
   '(outline-8                      ((t (:inherit notebook-strong))))

   ;; --- Orderless ------------------------------------------------------
   '(orderless-match-face-0         ((t (:inherit (notebook-strong bold)))))
   '(orderless-match-face-1         ((t (:inherit (notebook-strong bold)))))
   '(orderless-match-face-2         ((t (:inherit (notebook-strong bold)))))
   '(orderless-match-face-3         ((t (:inherit (notebook-strong bold)))))

   ;; --- Fly spell ----------------------------------------------------
   '(flyspell-duplicate             ((t (:inherit notebook-popout))))
   '(flyspell-incorrect             ((t (:inherit notebook-popout
						  :underline "#BF616A"))))

   ;; --- Fly make ----------------------------------------------------
   ;; TODO: Fix these
   `(flymake-error                  ((t (:foreground "#BF616A" :background nil))))
   `(flymake-warning                ((t (:foreground "#EBCB8B" :background nil))))
   `(flymake-note                   ((t (:foreground "orange" :background nil))))
   `(compilation-error              ((t (:foreground "#BF616A" :background nil))))
   `(compilation-warning            ((t (:foreground "#EBCB8B" :background nil))))
   `(compilation-mode-line-run      ((t (:inherit notebook-foreground))))

   ;; --- Org agenda ---------------------------------------------------
   '(org-agenda-calendar-event      ((t (:inherit notebook-default))))
   '(org-agenda-calendar-sexp       ((t (:inherit notebook-salient))))
   '(org-agenda-clocking            ((t (:inherit notebook-faded))))
   '(org-agenda-column-dateline     ((t (:inherit notebook-faded))))
   '(org-agenda-current-time        ((t (:inherit notebook-strong))))
   '(org-agenda-date                ((t (:inherit notebook-salient))))
   '(org-agenda-date-today          ((t (:inherit (notebook-salient
                                                   notebook-strong)))))
   '(org-agenda-date-weekend        ((t (:inherit notebook-faded))))
   '(org-agenda-diary               ((t (:inherit notebook-faded))))
   '(org-agenda-dimmed-todo-face    ((t (:inherit notebook-faded))))
   '(org-agenda-done                ((t (:inherit notebook-faded))))
   '(org-agenda-filter-category     ((t (:inherit notebook-faded))))
   '(org-agenda-filter-effort       ((t (:inherit notebook-faded))))
   '(org-agenda-filter-regexp       ((t (:inherit notebook-faded))))
   '(org-agenda-filter-tags         ((t (:inherit notebook-faded))))
   '(org-agenda-property-face       ((t (:inherit notebook-faded))))
   '(org-agenda-restriction-lock    ((t (:inherit notebook-faded))))
   '(org-agenda-structure           ((t (:inherit notebook-strong))))

   ;; --- Org ----------------------------------------------------------
   '(org-archived                            ((t (:inherit notebook-faded))))
   '(org-block                               ((t (:inherit (notebook-block fixed-pitch)))))
   '(org-block-begin-line                    ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-block-end-line                      ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-checkbox                            ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-checkbox-statistics-done            ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-checkbox-statistics-todo            ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-clock-overlay                       ((t (:inherit notebook-faded))))
   '(org-code                                ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-column                              ((t (:inherit notebook-faded))))
   '(org-column-title                        ((t (:inherit notebook-faded))))
   '(org-date                                ((t (:inherit notebook-faded))))
   '(org-date-selected                       ((t (:inherit notebook-faded))))
   '(org-default                             ((t (:inherit notebook-faded))))
   '(org-document-info                       ((t (:inherit notebook-faded))))
   '(org-document-info-keyword               ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-document-title                      ((t (:inherit notebook-faded))))
   '(org-done                                ((t (:inherit notebook-faded))))
   '(org-drawer                              ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-ellipsis                            ((t (:inherit notebook-faded))))
   '(org-footnote                            ((t (:inherit notebook-faded))))
   '(org-formula                             ((t (:inherit notebook-faded))))
   '(org-headline-done                       ((t (:foreground "#6a7276"))))
   '(org-hide                                ((t (:inherit notebook-subtle-i))))
   '(org-indent                              ((t (:inherit notebook-subtle-i))))
   '(org-latex-and-related                   ((t (:inherit notebook-faded))))
   '(org-level-1                             ((t (:inherit notebook-strong))))
   '(org-level-2                             ((t (:inherit notebook-strong))))
   '(org-level-3                             ((t (:inherit notebook-strong))))
   '(org-level-4                             ((t (:inherit notebook-strong))))
   '(org-level-5                             ((t (:inherit notebook-strong))))
   '(org-level-6                             ((t (:inherit notebook-strong))))
   '(org-level-7                             ((t (:inherit notebook-strong))))
   '(org-level-8                             ((t (:inherit notebook-strong))))
   '(org-link                                ((t (:inherit notebook-salient))))
   '(org-list-dt                             ((t (:inherit notebook-faded))))
   '(org-macro                               ((t (:inherit notebook-faded))))
   '(org-meta-line                           ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-mode-line-clock                     ((t (:inherit notebook-faded))))
   '(org-mode-line-clock-overrun             ((t (:inherit notebook-faded))))
   '(org-priority                            ((t (:inherit notebook-faded))))
   '(org-property-value                      ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-quote                               ((t (:inherit notebook-faded))))
   '(org-scheduled                           ((t (:inherit notebook-faded))))
   '(org-scheduled-previously                ((t (:inherit notebook-faded))))
   '(org-scheduled-today                     ((t (:inherit notebook-faded))))
   '(org-sexp-date                           ((t (:inherit notebook-faded))))
   '(org-special-keyword                     ((t (:inherit (notebook-faded fixed-pitch)))))
   '(org-table                               ((t (:inherit (notebook-default fixed-pitch)))))
   '(org-tag                                 ((t (:inherit notebook-popout))))
   '(org-tag-group                           ((t (:inherit notebook-faded))))
   '(org-target                              ((t (:inherit notebook-faded))))
   '(org-time-grid                           ((t (:inherit notebook-faded))))
   '(org-todo                                ((t (:inherit (notebook-salient notebook-strong)))))
   '(org-upcoming-deadline                   ((t (:inherit notebook-default))))
   '(org-verbatim                            ((t (:inherit notebook-popout))))
   '(org-verse                               ((t (:inherit notebook-faded))))
   '(org-warning                             ((t (:inherit notebook-popout))))

   ;; --- Mu4e ---------------------------------------------------------
   '(mu4e-attach-number-face                ((t (:inherit notebook-strong))))
   '(mu4e-cited-1-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-2-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-3-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-4-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-5-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-6-face                      ((t (:inherit notebook-faded))))
   '(mu4e-cited-7-face                      ((t (:inherit notebook-faded))))
   '(mu4e-compose-header-face               ((t (:inherit notebook-faded))))
   '(mu4e-compose-separator-face            ((t (:inherit notebook-faded))))
   '(mu4e-contact-face                      ((t (:inherit notebook-salient))))
   '(mu4e-context-face                      ((t (:inherit notebook-faded))))
   '(mu4e-draft-face                        ((t (:inherit notebook-faded))))
   '(mu4e-flagged-face                      ((t (:inherit notebook-popout))))
   '(mu4e-footer-face                       ((t (:inherit notebook-faded))))
   '(mu4e-forwarded-face                    ((t (:inherit notebook-default))))
   '(mu4e-header-face                       ((t (:inherit notebook-default))))
   '(mu4e-header-highlight-face             ((t (:inherit highlight))))
   '(mu4e-header-key-face                   ((t (:inherit notebook-strong))))
   '(mu4e-header-marks-face                 ((t (:inherit notebook-faded))))
   '(mu4e-header-title-face                 ((t (:inherit notebook-strong))))
   '(mu4e-header-value-face                 ((t (:inherit notebook-default))))
   '(mu4e-highlight-face                    ((t (:inherit notebook-popout))))
   '(mu4e-link-face                         ((t (:inherit notebook-salient))))
   '(mu4e-modeline-face                     ((t (:inherit notebook-faded))))
   '(mu4e-moved-face                        ((t (:inherit notebook-faded))))
   '(mu4e-ok-face                           ((t (:inherit notebook-faded))))
   '(mu4e-region-code                       ((t (:inherit notebook-faded))))
   '(mu4e-replied-face                      ((t (:inherit notebook-default))))
   '(mu4e-special-header-value-face         ((t (:inherit notebook-default))))
   '(mu4e-system-face                       ((t (:inherit notebook-faded))))
   '(mu4e-title-face                        ((t (:inherit notebook-strong))))
   '(mu4e-trashed-face                      ((t (:inherit notebook-faded))))
   '(mu4e-unread-face                       ((t (:inherit notebook-strong))))
   '(mu4e-url-number-face                   ((t (:inherit notebook-faded))))
   '(mu4e-view-body-face                    ((t (:inherit notebook-default))))
   '(mu4e-warning-face                      ((t (:inherit notebook-popout))))

   ;; --- Notmuch -------------------------------------------------------
   `(notmuch-crypto-decryption            ((t (:inherit notebook-strong))))
   `(notmuch-crypto-part-header           ((t (:inherit notebook-strong))))
   `(notmuch-crypto-signature-bad         ((t (:inherit notebook-error))))
   `(notmuch-crypto-signature-good        ((t (:inherit notebook-ok))))
   `(notmuch-crypto-signature-good-key    ((t (:inherit notebook-ok))))
   `(notmuch-crypto-signature-unknown     ((t (:inherit notebook-warning))))
   `(notmuch-search-count                 ((t (:inherit notebook-faded))))
   `(notmuch-search-unread-face           ((t (:inherit notebook-strong))))
   `(notmuch-search-date                  ((t (:inherit notebook-default))))
   `(notmuch-search-matching-authors      ((t (:inherit notebook-salient))))
   `(notmuch-search-non-matching-authors  ((t (:inherit notebook-faded))))
   `(notmuch-search-subject               ((t (:inherit notebook-default))))
   `(notmuch-tag-added                    ((t (:inherit notebook-verbatim :underline t))))
   `(notmuch-tag-deleted                  ((t (:inherit notebook-verbatim :strike-through t))))
   `(notmuch-tag-face                     ((t (:inherit notebook-verbatim))))
   `(notmuch-tag-flagged                  ((t (:inherit notebook-strong))))
   `(notmuch-tag-unread                   ((t (:inherit notebook-strong))))
   `(notmuch-tree-match-author-face       ((t (:inherit notebook-salient))))
   `(notmuch-tree-match-subject-face      ((t (:inherit notebook-default))))
   `(notmuch-tree-match-date-face         ((t (:inherit notebook-default))))
   `(notmuch-tree-match-tag-face          ((t (:inherit notebook-verbatim))))
   `(notmuch-tree-no-match-face           ((t (:inherit notebook-faded))))
   `(notmuch-tree-no-match-date-face      ((t (:inherit notebook-default))))

   ;; --- Elfeed -------------------------------------------------------
   '(elfeed-log-date-face                   ((t (:inherit notebook-faded))))
   '(elfeed-log-info-level-face             ((t (:inherit notebook-default))))
   '(elfeed-log-debug-level-face            ((t (:inherit notebook-default))))
   '(elfeed-log-warn-level-face             ((t (:inherit notebook-popout))))
   '(elfeed-log-error-level-face            ((t (:inherit notebook-popout))))
   '(elfeed-search-tag-face                 ((t (:inherit notebook-verbatim))))
   '(elfeed-search-date-face                ((t (:inherit notebook-default))))
   '(elfeed-search-feed-face                ((t (:inherit notebook-salient))))
   '(elfeed-search-filter-face              ((t (:inherit notebook-faded))))
   '(elfeed-search-last-update-face         ((t (:inherit notebook-salient))))
   '(elfeed-search-title-face               ((t (:inherit notebook-default))))
   '(elfeed-search-unread-count-face        ((t (:inherit notebook-strong))))
   '(elfeed-search-unread-title-face        ((t (:inherit notebook-strong))))

   ;; --- Ivy --------------------------------------------------------
   `(ivy-minibuffer-match-face-1   ((t (:inherit notebook-popout))))
   `(ivy-minibuffer-match-face-2   ((t (:inherit notebook-popout))))
   `(ivy-minibuffer-match-face-3   ((t (:inherit notebook-popout))))
   `(ivy-minibuffer-match-face-4   ((t (:inherit notebook-popout))))

   ;; --- Orderless  --------------------------------------------------------
   `(orderless-match-face-0 ((t (:inherit notebook-popout))))
   `(orderless-match-face-1 ((t (:inherit notebook-popout))))
   `(orderless-match-face-2 ((t (:inherit notebook-popout))))
   `(orderless-match-face-3 ((t (:inherit notebook-popout))))

   ;; --- Deft --------------------------------------------------------
   '(deft-filter-string-error-face         ((t (:inherit notebook-popout))))
   '(deft-filter-string-face               ((t (:inherit notebook-default))))
   '(deft-header-face                      ((t (:inherit notebook-salient))))
   '(deft-separator-face                   ((t (:inherit notebook-faded))))
   '(deft-summary-face                     ((t (:inherit notebook-faded))))
   '(deft-time-face                        ((t (:inherit notebook-salient))))
   '(deft-title-face                       ((t (:inherit notebook-strong))))

   ;; --- Restructured text -------------------------------------------
   '(rst-adornment                         ((t (:inherit notebook-faded))))
   '(rst-block                             ((t (:inherit notebook-default))))
   '(rst-comment                           ((t (:inherit notebook-faded))))
   '(rst-definition                        ((t (:inherit notebook-salient))))
   '(rst-directive                         ((t (:inherit notebook-salient))))
   '(rst-emphasis1                         ((t (:inherit notebook-faded))))
   '(rst-emphasis2                         ((t (:inherit notebook-strong))))
   '(rst-external                          ((t (:inherit notebook-salient))))
   '(rst-level-1                           ((t (:inherit notebook-strong))))
   '(rst-level-2                           ((t (:inherit notebook-strong))))
   '(rst-level-3                           ((t (:inherit notebook-strong))))
   '(rst-level-4                           ((t (:inherit notebook-strong))))
   '(rst-level-5                           ((t (:inherit notebook-strong))))
   '(rst-level-6                           ((t (:inherit notebook-strong))))
   '(rst-literal                           ((t (:inherit notebook-salient))))
   '(rst-reference                         ((t (:inherit notebook-salient))))
   '(rst-transition                        ((t (:inherit notebook-default))))

   ;; --- Markdown ----------------------------------------------------
   '(markdown-blockquote-face              ((t (:inherit notebook-default))))
   '(markdown-bold-face                    ((t (:inherit notebook-strong))))
   '(markdown-code-face                    ((t (:inherit notebook-default))))
   '(markdown-comment-face                 ((t (:inherit notebook-faded))))
   '(markdown-footnote-marker-face         ((t (:inherit notebook-default))))
   '(markdown-footnote-text-face           ((t (:inherit notebook-default))))
   '(markdown-gfm-checkbox-face            ((t (:inherit notebook-default))))
   '(markdown-header-delimiter-face        ((t (:inherit notebook-faded))))
   '(markdown-header-face                  ((t (:inherit notebook-strong))))
   '(markdown-header-face-1                ((t (:inherit notebook-strong))))
   '(markdown-header-face-2                ((t (:inherit notebook-strong))))
   '(markdown-header-face-3                ((t (:inherit notebook-strong))))
   '(markdown-header-face-4                ((t (:inherit notebook-strong))))
   '(markdown-header-face-5                ((t (:inherit notebook-strong))))
   '(markdown-header-face-6                ((t (:inherit notebook-strong))))
   '(markdown-header-rule-face             ((t (:inherit notebook-default))))
   '(markdown-highlight-face               ((t (:inherit notebook-default))))
   '(markdown-hr-face                      ((t (:inherit notebook-default))))
   '(markdown-html-attr-name-face          ((t (:inherit notebook-default))))
   '(markdown-html-attr-value-face         ((t (:inherit notebook-default))))
   '(markdown-html-entity-face             ((t (:inherit notebook-default))))
   '(markdown-html-tag-delimiter-face      ((t (:inherit notebook-default))))
   '(markdown-html-tag-name-face           ((t (:inherit notebook-default))))
   '(markdown-inline-code-face             ((t (:inherit notebook-popout))))
   '(markdown-italic-face                  ((t (:inherit notebook-faded))))
   '(markdown-language-info-face           ((t (:inherit notebook-default))))
   '(markdown-language-keyword-face        ((t (:inherit notebook-default))))
   '(markdown-line-break-face              ((t (:inherit notebook-default))))
   '(markdown-link-face                    ((t (:inherit notebook-salient))))
   '(markdown-link-title-face              ((t (:inherit notebook-default))))
   '(markdown-list-face                    ((t (:inherit notebook-faded))))
   '(markdown-markup-face                  ((t (:inherit notebook-faded))))
   '(markdown-math-face                    ((t (:inherit notebook-default))))
   '(markdown-metadata-key-face            ((t (:inherit notebook-faded))))
   '(markdown-metadata-value-face          ((t (:inherit notebook-faded))))
   '(markdown-missing-link-face            ((t (:inherit notebook-default))))
   '(markdown-plain-url-face               ((t (:inherit notebook-default))))
   '(markdown-pre-face                     ((t (:inherit notebook-default))))
   '(markdown-reference-face               ((t (:inherit notebook-salient))))
   '(markdown-strike-through-face          ((t (:inherit notebook-faded))))
   '(markdown-table-face                   ((t (:inherit notebook-default))))
   '(markdown-url-face                     ((t (:inherit notebook-salient))))

   ;; --- Terminal ----------------------------------------------------
   '(term-bold                             ((t (:inherit notebook-strong))))
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
   `(haskell-constructor-face   ((t (:foreground ,notebook-salient-alt))))
   `(font-lock-type-face        ((t (:foreground ,notebook-salient))))
   `(haskell-pragma-face        ((t (:foreground ,notebook-highlight))))
   `(haskell-operator-face      ((t (:inherit notebook-default))))

   ;; --- Nix ----------------------------------------------------
   `(nix-attribute-face ((t (:foreground ,notebook-foreground :bold nil))))

   ;; --- Sh ----------------------------------------------------
   `(sh-quoted-exec ((t (:foreground ,notebook-salient-alt))))
   ;;
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'notebook)
