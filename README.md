![](../assets/mindre-logo.png)

When putting down ideas or solving problems on paper we seldom use a lot of colors, so why do we need our editor to look like a christmas tree?

Mindre (which is the Swedish word for "less") tries to strike a good balance between usability and minimalism by almost being a monochrome theme but with a splash of color.

**This is very much a work in progress and things may change drastically at any time.**

# Manual installation
1. Copy mindre-theme.el to a path in your custom-theme-load-path.
2. Add a `(load-theme 'mindre)` to your init file (either ~/.emacs or ~/.emacs.d/init.el).
# Manual installation (use-package)
1. Copy mindre-theme.el to `~/.emacs.d/themes`
2. Add the following snippet to your init file
```elisp
(use-package mindre-theme
  :ensure nil
  :load-path "themes/"
  :config
  (mindre))
```
# Installation with use-package and straight
Add the following snippet to your init file
```elisp
(use-package mindre-theme
  :straight (:host github :repo "erikbackman/mindre-theme"))
```
