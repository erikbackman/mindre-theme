![](../assets/mindre-logo.png)

When putting down ideas or solving problems on paper we seldom use a lot of colors,
so why do we need our editor to look like a christmas tree?

Mindre (which is the Swedish word for "less") tries to strike a good balance between
usability and minimalism by almost being a monochrome theme but with a splash of color.

I highly recommend using [Redshift](http://jonls.dk/redshift/) or something
similar to adjust the color temperature of your screen. Personally I have mine
set to 3200K for both day and night (default is 3700K and 5500K respectively).

**This is very much a work in progress and things may change drastically at any time.**

# Manual installation
1. Copy mindre-theme.el to a path in your `custom-theme-load-path`.
2. Add a `(load-theme 'mindre t)` to your init file (either ~/.emacs or ~/.emacs.d/init.el).

# Manual installation (use-package)
1. Copy mindre-theme.el to `~/.emacs.d/themes`
2. Add the following snippet to your init file

```Emacs-Lisp
(use-package mindre-theme
  :ensure nil
  :load-path "themes/"
  :config
  (load-theme 'mindre t))
```

# Installation with use-package and straight
Add the following snippet to your init file

```elisp
(use-package mindre-theme
  :ensure t
  :straight (:host github :repo "erikbackman/mindre-theme")
  :config
  (load-theme 'mindre t))
```

# Customisations

```elisp
(setq mindre-use-more-bold nil
      mindre-use-facded-lisp-parens t)
```

# Terminal colors

**Kitty**

```ini
foreground            #37474F
background            #F5F5F5
selection_foreground  #37474F
selection_background  #CFD8DC
url_color             #5e429f
cursor                #37474F

# black
color0   #2E3440
color8   #4C566A

# red
color1   #BF616A
color9   #BF616A

# green
color2   #00625D
color10  #537469

# yellow
color3   #54433a
color11  #54433a

# blue
color4  #37474F
color12 #37474F

# magenta
color5   #5e429f
color13  #5e429f

# cyan
color6   #37474F
color14  #37474F

# white
color7   #ECEFF1
color15  #F5F5F5
```

# ~~Frequently~~ asked questions
- **What fonts are used in the logo/screenshots?**

  Sarasa Mono (It's basically Iosevka) and CMU Concrete
