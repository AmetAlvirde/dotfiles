# Vainilla Emacs Setup

First of all, it's important to aknowledge: the vainilla setup files conflict
with Doom Emacs config files. As of now, I prefer to work with Doom, so the
conflicting files from the vainilla setup were disabled in favor of Doom's.

That said, if you wanna play with them, as long as you disable Doom's files and
start with the vainilla ones, you shouldn-t have any problems. To do so, just
replace the links on the `install.conf.json`file at the root of this project,
with these ones:

```json
{
  "~/.doom.d/packages.el":     "doom-emacs/packages.el",
  "~/.emacs.d/init.el":        "vainilla-emacs/init.el",
  "~/.emacs.d/emacs-init.org": "vainilla-emacs/emacs-init.org",
}
```
