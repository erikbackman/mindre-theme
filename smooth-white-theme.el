;;; smooth-white-theme.el --- smooth-white -*- lexical-binding: t -*-
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

(deftheme smooth-white
  "smooth-white Theme")

(defgroup smooth-white nil
  "smooth-white")

(defcustom smooth-white-background "#F5F5F5"
  "Default background color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-background-dark-1 "#2E3440"
  "Default dark background"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-background-dark-2 "#4C566A"
  "Lighter dark background "
  :type 'color :group 'smooth-white)

(defcustom smooth-white-foreground "#37474F"
  "Default foreground color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-highlight "#CFD8DC"
  "Highlight color is used to highlight part of the screen."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-highlight-alt "#ECEFF1"
  "Lighter highlight color used to highlight part of the screen."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-yellow "#966544"
  "Default yellow color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-ok "#966544"
  "Default yellow color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-warning "#EBCB8B"
  "Default yellow color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-error "#BF616A"
  "Default yellow color"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-subtle "#ECEFF1"
  "Subtle color is used to suggest a physical area on the screen."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-faded "#B0BEC5"
  "Faded face is for information that are less important."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-salient "#673AB7"
  "Salient color is used for information that are important."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-salient-alt "#00625D"
  "Alt Salient color is used for information that are important"
  :type 'color :group 'smooth-white)

(defcustom smooth-white-verbatim "#62543E"
  "Color used for things like strings."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-strong "#81A1C1"
  "Strong color is used for information of a structural nature."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-popout "#000"
  "Popout colour is used for information that needs attention."
  :type 'color :group 'smooth-white)

(defcustom smooth-white-critical "#BF616A"
  "Critical face is for information that requires immediate action."
  :type 'color :group 'smooth-white)

(defface smooth-white-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
  :group nil)

(defface smooth-white-critical-i nil
  "Critical face inversed." :group nil)

(defface smooth-white-popout nil
  "Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
  :group nil)

(defface smooth-white-popout-i nil
  "Popout face inversed." :group nil)

(defface smooth-white-strong nil
  "Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
  :group nil)

(defface smooth-white-strong-i nil
  "Strong face inversed." :group nil)

(defface smooth-white-salient nil
  "Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
  :group nil)

(defface smooth-white-salient-i nil
  "Strong face inversed." :group nil)

(defface smooth-white-faded nil
  "Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
  :group nil)

(defface smooth-white-faded-i nil
  "Faded face inversed." :group nil)

(defface smooth-white-subtle nil
  "Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
  :group nil)

(defface smooth-white-subtle-i nil
  "Subtle face inversed." :group nil)

(defface smooth-white-default nil
  "Default face." :group nil)

(defface smooth-white-default-i nil
  "Default face inversed." :group nil)

(defface smooth-white-highlight nil
  "Default highligt face."
  :group nil)

(defface smooth-white-block nil
  "Default block face"
  :group nil)

(defvar smooth-white-after-load-hook nil
  "Hook run after theme has loaded.")

(defun smooth-white ()
  "smooth-white theme"
  (interactive)
  (set-foreground-color smooth-white-foreground)
  (set-background-color smooth-white-background)
  (load-theme 'smooth-white t)
  (run-hooks 'smooth-white-after-load-hook))

(let ((light     '((background light)))
      (dark      '((background dark)))
      (tty-light '((type tty) (background light)))
      (tty-dark  '((type tty) (background dark))))

  ;; --- Faces ---------------------------------------------------------
  (custom-theme-set-faces
   'smooth-white
   
   ;; --- Base ---------------------------------------------------------   
   `(cursor ((t (:foreground ,smooth-white-background
			     :background ,smooth-white-foreground))
             ))

   `(default ((t (:background ,smooth-white-background
	  		      :foreground ,smooth-white-foreground))))

   `(highlight ((t (:background ,smooth-white-highlight))))

   `(smooth-white-subtle ((t (:background ,smooth-white-subtle))))

   `(smooth-white-subtle-i ((t (:foreground ,smooth-white-subtle))))
   
   `(smooth-white-faded ((t (:foreground ,smooth-white-faded))))

   `(smooth-white-faded-i ((t (:foreground ,smooth-white-background
					   :background ,smooth-white-faded))))
   
   `(smooth-white-default ((t (:foreground ,smooth-white-foreground))))

   `(smooth-white-default-i ((t (:foreground ,smooth-white-background
					     :background ,smooth-white-foreground))))

   
   `(smooth-white-salient ((t (:foreground ,smooth-white-salient))))

   `(smooth-white-salient-i ((t (:foreground ,smooth-white-background
					     :background ,smooth-white-salient))))
   `(smooth-white-strong   ((t (:foreground "#161c20"))))
   `(smooth-white-strong-i ((t (:foreground ,smooth-white-background
					    :background ,smooth-white-strong
					    :weight bold))))

   `(smooth-white-popout ((t (:foreground ,smooth-white-popout))))

   `(smooth-white-popout-i ((t (:foreground ,smooth-white-background
					    :background ,smooth-white-popout))))
   
   `(smooth-white-critical ((t (:foreground ,smooth-white-background
					    :background ,smooth-white-critical))))

   `(smooth-white-critical-i ((t (:foreground ,smooth-white-critical
					      ;; :background ,smooth-white-background
					      ))))

   `(smooth-white-block ((t (:background "#f2f2f2"
					 :foreground ,smooth-white-foreground))))
   ;; --- Header & mode line -------------------------------------------
   
   `(mode-line ((t ( :foreground "white"
		     :background ,smooth-white-background-dark-1
                     :box (:line-width 1 :color ,smooth-white-background-dark-2 :style nil) ))))

   `(mode-line-highlight ((t (:inherit nil :background nil
				       :box nil))))
   `(mode-line-buffer-id ((t (:weight regular :background nil))))
   `(mode-line-emphasis  ((t (:weight regular :background nil))))
   			   
   `(mode-line-inactive ((t ( :foreground "white"
			      :background ,smooth-white-background-dark-2
			      :box (:line-width 1 :color ,smooth-white-background-dark-2 :style nil) ))))

   `(header-line ((t (:foreground ,smooth-white-foreground
				  :background ,smooth-white-subtle
				  :inherit nil
				  :box nil))))

   ;; --- Structural ---------------------------------------------------
   '(bold                        ((t (:inherit smooth-white-strong :weight semibold))))
   '(italic                      ((t (:slant italic))))
   '(italic                      ((t (:inherit smooth-white-faded))))
   '(bold-italic                 ((t (:inherit smooth-white-strong))))
   '(region                      ((t (:inherit highlight))))
   '(fringe                      ((t (:inherit (smooth-white-faded)))))
   '(hl-line                     ((t (:inherit highlight))))
   '(link                        ((t (:inherit smooth-white-salient))))
   '(fixed-pitch                 ((t (:inherit default))))
   '(fixed-pitch-serif           ((t (:inherit default))))
   
   ;; --- Semantic -----------------------------------------------------
   '(shadow                        ((t (:inherit smooth-white-faded))))
   '(success                       ((t (:inherit smooth-white-salient))))
   '(warning                       ((t (:inherit smooth-white-warning))))
   '(error                         ((t (:inherit smooth-white-critical))))
   '(match                         ((t (:inherit smooth-white-popout))))

   ;; --- General ------------------------------------------------------
   '(buffer-menu-buffer            ((t (:inherit smooth-white-strong))))
   '(minibuffer-prompt             ((t (:inherit smooth-white-strong))))
   '(isearch                       ((t (:inherit smooth-white-strong))))
   '(isearch-fail                  ((t (:inherit smooth-white-faded))))
   '(show-paren-match              ((t (:inherit nil :weight bold :foreground "#AB47BC"))))
   '(show-paren-mismatch           ((t (:inherit smooth-white-critical))))
   '(lazy-highlight                ((t (:inherit smooth-white-subtle))))
   '(trailing-whitespace           ((t (:inherit smooth-white-subtle))))
   '(secondary-selection           ((t (:inherit smooth-white-subtle))))
   '(completions-annotations       ((t (:inherit smooth-white-faded))))
   '(completions-common-part       ((t (:inherit smooth-white-faded))))
   '(completions-first-difference  ((t (:inherit default))))
   '(tooltip                       ((t (:inherit smooth-white-subtle))))
   '(read-multiple-choice-face     ((t (:inherit smooth-white-strong))))
   '(nobreak-hyphen                ((t (:inherit smooth-white-popout))))
   '(nobreak-space                 ((t (:inherit smooth-white-popout))))
   '(help-argument-name            ((t (:inherit smooth-white-faded))))
   '(tabulated-list-fake-header    ((t (:inherit smooth-white-strong))))
   '(tool-bar                      ((t (:inherit smooth-white-faded-i))))
 
   ;; --- TTY faces ----------------------------------------------------
   '(tty-menu-disabled-face        ((t (:inherit smooth-white-faded-i))))
   '(tty-menu-enabled-face         ((t (:inherit smooth-white-default-i))))
   '(tty-menu-selected-face        ((t (:inherit smooth-white-salient-i))))

   ;; --- Eshell ----------------------------------------------------

   '(eshell-prompt ((t (:inherit smooth-white-default))))
   
   ;; --- Windows divider ----------------------------------------------
   `(window-divider                ((t (:foreground ,smooth-white-background))))
   '(window-divider-first-pixel    ((t (:inherit window-divider))))
   '(window-divider-last-pixel     ((t (:inherit window-divider))))
   `(vertical-border               ((t (:foreground ,smooth-white-faded))))

   ;; --- Tab bar ------------------------------------------------------
   '(tab-bar                       ((t (:inherit default))))
   '(tab-bar-tab                   ((t (:inherit default))))
   '(tab-bar-tab-inactive          ((t (:inherit smooth-white-faded))))
   '(tab-line                      ((t (:inherit default))))
   
   ;; --- Line numbers -------------------------------------------------
   '(line-number                  ((t (:inherit smooth-white-faded))))
   '(line-number-current-line     ((t (:inherit default))))
   `(line-number-major-tick       ((t (:inherit smooth-white-faded))))
   '(line-number-minor-tick       ((t (:inherit smooth-white-faded))))
   
   ;; --- Font lock ----------------------------------------------------
   '(font-lock-comment-face        ((t (:inherit smooth-white-faded))))
   '(font-lock-doc-face            ((t (:inherit smooth-white-faded))))
   `(font-lock-string-face         ((t (:foreground ,smooth-white-verbatim))))
   '(font-lock-constant-face       ((t (:inherit smooth-white-strong))))
   '(font-lock-warning-face        ((t (:inherit smooth-white-popout))))
   '(font-lock-function-name-face  ((t (:inherit smooth-white-strong))))
   `(font-lock-variable-name-face  ((t (:inherit smooth-white-strong))))
   '(font-lock-builtin-face        ((t (:inherit smooth-white-salient))))
   '(font-lock-type-face           ((t (:inherit smooth-white-salient))))
   '(font-lock-keyword-face        ((t (:inherit smooth-white-salient))))

   ;; --- Custom edit --------------------------------------------------
   '(widget-field                  ((t (:inherit smooth-white-subtle))))
   '(widget-button                 ((t (:inherit smooth-white-strong))))
   '(widget-single-line-field      ((t (:inherit smooth-white-subtle))))
   '(custom-group-subtitle         ((t (:inherit smooth-white-strong))))
   '(custom-group-tag              ((t (:inherit smooth-white-strong))))
   '(custom-group-tag-1            ((t (:inherit smooth-white-strong))))
   '(custom-comment                ((t (:inherit smooth-white-faded))))
   '(custom-comment-tag            ((t (:inherit smooth-white-faded))))
   '(custom-changed                ((t (:inherit smooth-white-salient))))
   '(custom-modified               ((t (:inherit smooth-white-salient))))
   '(custom-face-tag               ((t (:inherit smooth-white-strong))))
   '(custom-variable-tag           ((t (:inherit smooth-white-strong))))
   '(custom-invalid                ((t (:inherit smooth-white-popout))))
   '(custom-visibility             ((t (:inherit smooth-white-salient))))
   '(custom-state                  ((t (:inherit smooth-white-salient))))
   '(custom-link                   ((t (:inherit smooth-white-salient))))
   '(custom-variable-obsolete      ((t (:inherit smooth-white-faded))))

   ;; --- Company tooltip ----------------------------------------------
   '(company-tooltip                      ((t (:inherit smooth-white-subtle))))
   '(company-tooltip-mouse                ((t (:inherit smooth-white-faded-i))))
   '(company-tooltip-selection            ((t (:inherit smooth-white-salient-i))))

   '(company-scrollbar-fg                 ((t (:inherit smooth-white-default-i))))
   '(company-scrollbar-bg                 ((t (:inherit smooth-white-faded-i))))

   '(company-tooltip-common               ((t (:inherit smooth-white-strong))))
   '(company-tooltip-common-selection     ((t (:inherit smooth-white-salient-i
							:weight normal))))
   '(company-tooltip-annotation           ((t (:inherit smooth-white-default))))
   '(company-tooltip-annotation-selection ((t (:inherit smooth-white-subtle))))

   ;; --- Corfu  --------------------------------------------------------
   `(corfu-current                        ((t (:inherit highlight))))

   ;; --- Buttons ------------------------------------------------------
   `(custom-button
     ((t (:foreground ,smooth-white-faded
		      :background ,smooth-white-highlight
		      :box nil))))

   `(custom-button-mouse
     ((t (:foreground ,smooth-white-foreground
		      :background ,smooth-white-subtle
		      :box nil))))

   `(custom-button-pressed
     ((t (:foreground ,smooth-white-background
		      :background ,smooth-white-foreground
		      :box nil))
      
      )
     )

   ;; --- Packages -----------------------------------------------------
   '(package-description            ((t (:inherit smooth-white-default))))
   '(package-help-section-name      ((t (:inherit smooth-white-default))))
   '(package-name                   ((t (:inherit smooth-white-salient))))
   '(package-status-avail-obso      ((t (:inherit smooth-white-faded))))
   '(package-status-available       ((t (:inherit smooth-white-default))))
   '(package-status-built-in        ((t (:inherit smooth-white-salient))))
   '(package-status-dependency      ((t (:inherit smooth-white-salient))))
   '(package-status-disabled        ((t (:inherit smooth-white-faded))))
   '(package-status-external        ((t (:inherit smooth-white-default))))
   '(package-status-held            ((t (:inherit smooth-white-default))))
   '(package-status-incompat        ((t (:inherit smooth-white-faded))))
   '(package-status-installed       ((t (:inherit smooth-white-salient))))
   '(package-status-new             ((t (:inherit smooth-white-default))))
   '(package-status-unsigned        ((t (:inherit smooth-white-default))))

   ;; --- Info ---------------------------------------------------------
   '(info-node                      ((t (:inherit smooth-white-strong))))
   '(info-menu-header               ((t (:inherit smooth-white-strong))))
   '(info-header-node               ((t (:inherit smooth-white-default))))
   '(info-index-match               ((t (:inherit smooth-white-salient))))
   '(Info-quoted                    ((t (:inherit smooth-white-faded))))
   '(info-title-1                   ((t (:inherit smooth-white-strong))))
   '(info-title-2                   ((t (:inherit smooth-white-strong))))
   '(info-title-3                   ((t (:inherit smooth-white-strong))))
   '(info-title-4                   ((t (:inherit smooth-white-strong))))

   ;; --- Helpful ------------------------------------------------------
   '(helpful-heading                ((t (:inherit smooth-white-strong))))

   ;; --- EPA ----------------------------------------------------------
   '(epa-field-body                 ((t (:inherit smooth-white-default))))
   '(epa-field-name                 ((t (:inherit smooth-white-strong))))
   '(epa-mark                       ((t (:inherit smooth-white-salient))))
   '(epa-string                     ((t (:inherit smooth-white-popout))))
   '(epa-validity-disabled          ((t (:inherit smooth-white-faded))))
   '(epa-validity-high              ((t (:inherit smooth-white-strong))))
   '(epa-validity-medium            ((t (:inherit smooth-white-default))))
   '(epa-validity-low               ((t (:inherit smooth-white-faded))))

   ;; --- Eglot --------------------------------------------------------
   '(eglot-mode-line                ((t (:foreground "white"))))
   '(eglot-mode-line-none-face      ((t (:foreground "white"))))
   '(eglot-highlight-symbol-face    ((t (:inherit underline))))
   
   ;; --- Popup --------------------------------------------------------
   '(popup-face                       ((t (:inherit highlight))))
   '(popup-isearch-match              ((t (:inherit smooth-white-popout))))
   '(popup-menu-face                  ((t (:inherit smooth-white-subtle))))
   '(popup-menu-mouse-face            ((t (:inherit smooth-white-faded-i))))
   '(popup-menu-selection-face        ((t (:inherit smooth-white-salient-i))))
   '(popup-menu-summary-face          ((t (:inherit smooth-white-faded))))
   '(popup-scroll-bar-background-face ((t (:inherit smooth-white-subtle))))
   '(popup-scroll-bar-foreground-face ((t (:inherit smooth-white-subtle))))
   '(popup-summary-face               ((t (:inherit smooth-white-faded))))
   '(popup-tip-face                   ((t (:inherit smooth-white-popout-i))))

   ;; --- Diff ---------------------------------------------------------
   '(diff-header                    ((t (:inherit smooth-white-faded))))
   '(diff-file-header               ((t (:inherit smooth-white-strong))))
   '(diff-context                   ((t (:inherit smooth-white-default))))
   '(diff-removed                   ((t (:inherit smooth-white-faded))))
   '(diff-changed                   ((t (:inherit smooth-white-popout))))
   '(diff-added                     ((t (:inherit smooth-white-salient))))
   '(diff-refine-added              ((t (:inherit (smooth-white-salient
                                                   smooth-white-strong)))))
   '(diff-refine-changed            ((t (:inherit smooth-white-popout))))
   '(diff-refine-removed            ((t (:inherit smooth-white-faded
						  :strike-through t))))
   
   ;; --- Message ------------------------------------------------------
   '(message-cited-text-1           ((t (:inherit smooth-white-faded))))
   '(message-cited-text-2           ((t (:inherit smooth-white-faded))))
   '(message-cited-text-3           ((t (:inherit smooth-white-faded))))
   '(message-cited-text-4           ((t (:inherit smooth-white-faded))))
   '(message-cited-text             ((t (:inherit smooth-white-faded))))
   '(message-header-cc              ((t (:inherit smooth-white-default))))
   '(message-header-name            ((t (:inherit smooth-white-strong))))
   '(message-header-newsgroups      ((t (:inherit smooth-white-default))))
   '(message-header-other           ((t (:inherit smooth-white-default))))
   '(message-header-subject         ((t (:inherit smooth-white-salient))))
   '(message-header-to              ((t (:inherit smooth-white-salient))))
   '(message-header-xheader         ((t (:inherit smooth-white-default))))
   '(message-mml                    ((t (:inherit smooth-white-popout))))
   '(message-separator              ((t (:inherit smooth-white-faded))))

   
   ;; --- Outline ------------------------------------------------------
   '(outline-1                      ((t (:inherit smooth-white-strong))))
   '(outline-2                      ((t (:inherit smooth-white-strong))))
   '(outline-3                      ((t (:inherit smooth-white-strong))))
   '(outline-4                      ((t (:inherit smooth-white-strong))))
   '(outline-5                      ((t (:inherit smooth-white-strong))))
   '(outline-6                      ((t (:inherit smooth-white-strong))))
   '(outline-7                      ((t (:inherit smooth-white-strong))))
   '(outline-8                      ((t (:inherit smooth-white-strong))))

   ;; --- Orderless ------------------------------------------------------
   '(orderless-match-face-0         ((t (:inherit (smooth-white-strong bold)))))
   '(orderless-match-face-1         ((t (:inherit (smooth-white-strong bold)))))
   '(orderless-match-face-2         ((t (:inherit (smooth-white-strong bold)))))
   '(orderless-match-face-3         ((t (:inherit (smooth-white-strong bold)))))
   
   ;; --- Fly spell ----------------------------------------------------
   '(flyspell-duplicate             ((t (:inherit smooth-white-popout))))
   '(flyspell-incorrect             ((t (:inherit smooth-white-popout
						  :underline "#BF616A"))))

   ;; --- Fly make ----------------------------------------------------
   ;; TODO: Fix these
   `(flymake-error                  ((t (:foreground "#BF616A" :background nil))))
   `(flymake-warning                ((t (:foreground "#EBCB8B" :background nil))))
   `(flymake-note                   ((t (:foreground "orange" :background nil))))
   `(compilation-error              ((t (:foreground "#BF616A" :background nil))))
   `(compilation-warning            ((t (:foreground "#EBCB8B" :background nil))))
   `(compilation-mode-line-run      ((t (:inherit smooth-white-foreground))))
   
   ;; --- Org agenda ---------------------------------------------------
   '(org-agenda-calendar-event      ((t (:inherit smooth-white-default))))
   '(org-agenda-calendar-sexp       ((t (:inherit smooth-white-salient))))
   '(org-agenda-clocking            ((t (:inherit smooth-white-faded))))
   '(org-agenda-column-dateline     ((t (:inherit smooth-white-faded))))
   '(org-agenda-current-time        ((t (:inherit smooth-white-strong))))
   '(org-agenda-date                ((t (:inherit smooth-white-salient))))
   '(org-agenda-date-today          ((t (:inherit (smooth-white-salient
                                                   smooth-white-strong)))))
   '(org-agenda-date-weekend        ((t (:inherit smooth-white-faded))))
   '(org-agenda-diary               ((t (:inherit smooth-white-faded))))
   '(org-agenda-dimmed-todo-face    ((t (:inherit smooth-white-faded))))
   '(org-agenda-done                ((t (:inherit smooth-white-faded))))
   '(org-agenda-filter-category     ((t (:inherit smooth-white-faded))))
   '(org-agenda-filter-effort       ((t (:inherit smooth-white-faded))))
   '(org-agenda-filter-regexp       ((t (:inherit smooth-white-faded))))
   '(org-agenda-filter-tags         ((t (:inherit smooth-white-faded))))
   '(org-agenda-property-face       ((t (:inherit smooth-white-faded))))
   '(org-agenda-restriction-lock    ((t (:inherit smooth-white-faded))))
   '(org-agenda-structure           ((t (:inherit smooth-white-strong))))


   ;; --- Org ----------------------------------------------------------
   '(org-archived                            ((t (:inherit smooth-white-faded))))
   '(org-block                               ((t (:inherit (smooth-white-block fixed-pitch)))))
   '(org-block-begin-line                    ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-block-end-line                      ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-checkbox                            ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-checkbox-statistics-done            ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-checkbox-statistics-todo            ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-clock-overlay                       ((t (:inherit smooth-white-faded))))
   '(org-code                                ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-column                              ((t (:inherit smooth-white-faded))))
   '(org-column-title                        ((t (:inherit smooth-white-faded))))
   '(org-date                                ((t (:inherit smooth-white-faded))))
   '(org-date-selected                       ((t (:inherit smooth-white-faded))))
   '(org-default                             ((t (:inherit smooth-white-faded))))
   '(org-document-info                       ((t (:inherit smooth-white-faded))))
   '(org-document-info-keyword               ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-document-title                      ((t (:inherit smooth-white-faded))))
   '(org-done                                ((t (:inherit smooth-white-faded))))
   '(org-drawer                              ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-ellipsis                            ((t (:inherit smooth-white-faded))))
   '(org-footnote                            ((t (:inherit smooth-white-faded))))
   '(org-formula                             ((t (:inherit smooth-white-faded))))
   '(org-headline-done                       ((t (:foreground "#6a7276"))))
   '(org-hide                                ((t (:inherit smooth-white-subtle-i))))
   '(org-indent                              ((t (:inherit smooth-white-subtle-i))))
   '(org-latex-and-related                   ((t (:inherit smooth-white-faded))))
   '(org-level-1                             ((t (:inherit smooth-white-strong))))
   '(org-level-2                             ((t (:inherit smooth-white-strong))))
   '(org-level-3                             ((t (:inherit smooth-white-strong))))
   '(org-level-4                             ((t (:inherit smooth-white-strong))))
   '(org-level-5                             ((t (:inherit smooth-white-strong))))
   '(org-level-6                             ((t (:inherit smooth-white-strong))))
   '(org-level-7                             ((t (:inherit smooth-white-strong))))
   '(org-level-8                             ((t (:inherit smooth-white-strong))))
   '(org-link                                ((t (:inherit smooth-white-salient))))
   '(org-list-dt                             ((t (:inherit smooth-white-faded))))
   '(org-macro                               ((t (:inherit smooth-white-faded))))
   '(org-meta-line                           ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-mode-line-clock                     ((t (:inherit smooth-white-faded))))
   '(org-mode-line-clock-overrun             ((t (:inherit smooth-white-faded))))
   '(org-priority                            ((t (:inherit smooth-white-faded))))
   '(org-property-value                      ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-quote                               ((t (:inherit smooth-white-faded))))
   '(org-scheduled                           ((t (:inherit smooth-white-faded))))
   '(org-scheduled-previously                ((t (:inherit smooth-white-faded))))
   '(org-scheduled-today                     ((t (:inherit smooth-white-faded))))
   '(org-sexp-date                           ((t (:inherit smooth-white-faded))))
   '(org-special-keyword                     ((t (:inherit (smooth-white-faded fixed-pitch)))))
   '(org-table                               ((t (:inherit (smooth-white-default fixed-pitch)))))
   '(org-tag                                 ((t (:inherit smooth-white-popout))))
   '(org-tag-group                           ((t (:inherit smooth-white-faded))))
   '(org-target                              ((t (:inherit smooth-white-faded))))
   '(org-time-grid                           ((t (:inherit smooth-white-faded))))
   '(org-todo                                ((t (:inherit (smooth-white-salient smooth-white-strong)))))
   '(org-upcoming-deadline                   ((t (:inherit smooth-white-default))))
   '(org-verbatim                            ((t (:inherit smooth-white-popout))))
   '(org-verse                               ((t (:inherit smooth-white-faded))))
   '(org-warning                             ((t (:inherit smooth-white-popout))))


   ;; --- Mu4e ---------------------------------------------------------
   '(mu4e-attach-number-face                ((t (:inherit smooth-white-strong))))
   '(mu4e-cited-1-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-2-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-3-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-4-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-5-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-6-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-cited-7-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-compose-header-face               ((t (:inherit smooth-white-faded))))
   '(mu4e-compose-separator-face            ((t (:inherit smooth-white-faded))))
   '(mu4e-contact-face                      ((t (:inherit smooth-white-salient))))
   '(mu4e-context-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-draft-face                        ((t (:inherit smooth-white-faded))))
   '(mu4e-flagged-face                      ((t (:inherit smooth-white-popout))))
   '(mu4e-footer-face                       ((t (:inherit smooth-white-faded))))
   '(mu4e-forwarded-face                    ((t (:inherit smooth-white-default))))
   '(mu4e-header-face                       ((t (:inherit smooth-white-default))))
   '(mu4e-header-highlight-face             ((t (:inherit highlight))))
   '(mu4e-header-key-face                   ((t (:inherit smooth-white-strong))))
   '(mu4e-header-marks-face                 ((t (:inherit smooth-white-faded))))
   '(mu4e-header-title-face                 ((t (:inherit smooth-white-strong))))
   '(mu4e-header-value-face                 ((t (:inherit smooth-white-default))))
   '(mu4e-highlight-face                    ((t (:inherit smooth-white-popout))))
   '(mu4e-link-face                         ((t (:inherit smooth-white-salient))))
   '(mu4e-modeline-face                     ((t (:inherit smooth-white-faded))))
   '(mu4e-moved-face                        ((t (:inherit smooth-white-faded))))
   '(mu4e-ok-face                           ((t (:inherit smooth-white-faded))))
   '(mu4e-region-code                       ((t (:inherit smooth-white-faded))))
   '(mu4e-replied-face                      ((t (:inherit smooth-white-default))))
   '(mu4e-special-header-value-face         ((t (:inherit smooth-white-default))))
   '(mu4e-system-face                       ((t (:inherit smooth-white-faded))))
   '(mu4e-title-face                        ((t (:inherit smooth-white-strong))))
   '(mu4e-trashed-face                      ((t (:inherit smooth-white-faded))))
   '(mu4e-unread-face                       ((t (:inherit smooth-white-strong))))
   '(mu4e-url-number-face                   ((t (:inherit smooth-white-faded))))
   '(mu4e-view-body-face                    ((t (:inherit smooth-white-default))))
   '(mu4e-warning-face                      ((t (:inherit smooth-white-popout))))

   ;; --- Elfeed -------------------------------------------------------
   '(elfeed-log-date-face                   ((t (:inherit smooth-white-faded))))
   '(elfeed-log-info-level-face             ((t (:inherit smooth-white-default))))
   '(elfeed-log-debug-level-face            ((t (:inherit smooth-white-default))))
   '(elfeed-log-warn-level-face             ((t (:inherit smooth-white-popout))))
   '(elfeed-log-error-level-face            ((t (:inherit smooth-white-popout))))
   '(elfeed-search-tag-face                 ((t (:inherit smooth-white-faded))))
   '(elfeed-search-date-face                ((t (:inherit smooth-white-faded))))
   '(elfeed-search-feed-face                ((t (:inherit smooth-white-salient))))
   '(elfeed-search-filter-face              ((t (:inherit smooth-white-faded))))
   '(elfeed-search-last-update-face         ((t (:inherit smooth-white-salient))))
   '(elfeed-search-title-face               ((t (:inherit smooth-white-default))))
   '(elfeed-search-tag-face                 ((t (:inherit smooth-white-faded))))
   '(elfeed-search-unread-count-face        ((t (:inherit smooth-white-strong))))
   '(elfeed-search-unread-title-face        ((t (:inherit smooth-white-strong))))

   ;; --- Deft --------------------------------------------------------
   '(deft-filter-string-error-face         ((t (:inherit smooth-white-popout))))
   '(deft-filter-string-face               ((t (:inherit smooth-white-default))))
   '(deft-header-face                      ((t (:inherit smooth-white-salient))))
   '(deft-separator-face                   ((t (:inherit smooth-white-faded))))
   '(deft-summary-face                     ((t (:inherit smooth-white-faded))))
   '(deft-time-face                        ((t (:inherit smooth-white-salient))))
   '(deft-title-face                       ((t (:inherit smooth-white-strong))))

   ;; --- Restructured text -------------------------------------------
   '(rst-adornment                         ((t (:inherit smooth-white-faded))))
   '(rst-block                             ((t (:inherit smooth-white-default))))
   '(rst-comment                           ((t (:inherit smooth-white-faded))))
   '(rst-definition                        ((t (:inherit smooth-white-salient))))
   '(rst-directive                         ((t (:inherit smooth-white-salient))))
   '(rst-emphasis1                         ((t (:inherit smooth-white-faded))))
   '(rst-emphasis2                         ((t (:inherit smooth-white-strong))))
   '(rst-external                          ((t (:inherit smooth-white-salient))))
   '(rst-level-1                           ((t (:inherit smooth-white-strong))))
   '(rst-level-2                           ((t (:inherit smooth-white-strong))))
   '(rst-level-3                           ((t (:inherit smooth-white-strong))))
   '(rst-level-4                           ((t (:inherit smooth-white-strong))))
   '(rst-level-5                           ((t (:inherit smooth-white-strong))))
   '(rst-level-6                           ((t (:inherit smooth-white-strong))))
   '(rst-literal                           ((t (:inherit smooth-white-salient))))
   '(rst-reference                         ((t (:inherit smooth-white-salient))))
   '(rst-transition                        ((t (:inherit smooth-white-default))))


   ;; --- Markdown ----------------------------------------------------
   '(markdown-blockquote-face              ((t (:inherit smooth-white-default))))
   '(markdown-bold-face                    ((t (:inherit smooth-white-strong))))
   '(markdown-code-face                    ((t (:inherit smooth-white-default))))
   '(markdown-comment-face                 ((t (:inherit smooth-white-faded))))
   '(markdown-footnote-marker-face         ((t (:inherit smooth-white-default))))
   '(markdown-footnote-text-face           ((t (:inherit smooth-white-default))))
   '(markdown-gfm-checkbox-face            ((t (:inherit smooth-white-default))))
   '(markdown-header-delimiter-face        ((t (:inherit smooth-white-faded))))
   '(markdown-header-face                  ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-1                ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-2                ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-3                ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-4                ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-5                ((t (:inherit smooth-white-strong))))
   '(markdown-header-face-6                ((t (:inherit smooth-white-strong))))
   '(markdown-header-rule-face             ((t (:inherit smooth-white-default))))
   '(markdown-highlight-face               ((t (:inherit smooth-white-default))))
   '(markdown-hr-face                      ((t (:inherit smooth-white-default))))
   '(markdown-html-attr-name-face          ((t (:inherit smooth-white-default))))
   '(markdown-html-attr-value-face         ((t (:inherit smooth-white-default))))
   '(markdown-html-entity-face             ((t (:inherit smooth-white-default))))
   '(markdown-html-tag-delimiter-face      ((t (:inherit smooth-white-default))))
   '(markdown-html-tag-name-face           ((t (:inherit smooth-white-default))))
   '(markdown-inline-code-face             ((t (:inherit smooth-white-popout))))
   '(markdown-italic-face                  ((t (:inherit smooth-white-faded))))
   '(markdown-language-info-face           ((t (:inherit smooth-white-default))))
   '(markdown-language-keyword-face        ((t (:inherit smooth-white-default))))
   '(markdown-line-break-face              ((t (:inherit smooth-white-default))))
   '(markdown-link-face                    ((t (:inherit smooth-white-salient))))
   '(markdown-link-title-face              ((t (:inherit smooth-white-default))))
   '(markdown-list-face                    ((t (:inherit smooth-white-faded))))
   '(markdown-markup-face                  ((t (:inherit smooth-white-faded))))
   '(markdown-math-face                    ((t (:inherit smooth-white-default))))
   '(markdown-metadata-key-face            ((t (:inherit smooth-white-faded))))
   '(markdown-metadata-value-face          ((t (:inherit smooth-white-faded))))
   '(markdown-missing-link-face            ((t (:inherit smooth-white-default))))
   '(markdown-plain-url-face               ((t (:inherit smooth-white-default))))
   '(markdown-pre-face                     ((t (:inherit smooth-white-default))))
   '(markdown-reference-face               ((t (:inherit smooth-white-salient))))
   '(markdown-strike-through-face          ((t (:inherit smooth-white-faded))))
   '(markdown-table-face                   ((t (:inherit smooth-white-default))))
   '(markdown-url-face                     ((t (:inherit smooth-white-salient))))

   ;; --- Terminal ----------------------------------------------------
   '(term-bold                             ((t (:inherit smooth-white-strong))))
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
   `(haskell-constructor-face   ((t (:foreground ,smooth-white-salient-alt))))
   `(font-lock-type-face        ((t (:foreground ,smooth-white-salient))))
   `(haskell-pragma-face        ((t (:foreground ,smooth-white-highlight))))
   `(haskell-operator-face      ((t (:inherit smooth-white-default))))

   ;; --- Nix ----------------------------------------------------
   `(nix-attribute-face ((t (:foreground ,smooth-white-foreground :bold nil))))
   
   ;; --- Sh ----------------------------------------------------
   `(sh-quoted-exec ((t (:foreground ,smooth-white-salient-alt))))
   ;;
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'smooth-white)
