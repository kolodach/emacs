# emacs
This is repo contains my Emacs preferences. It includes following packages:
* [evil-mode](https://github.com/emacs-evil/evil)
* [yasnippet](https://github.com/joaotavora/yasnippet)

Also this build includes several keybindings and fuctions, which helps to navigate and edit text. 

## How to install
Clone this repo to your .emacs.d directory and run `M-x eval-buffer [RET]`

## Working with configurations
Each configurations has it's own file with appropriate name. It has the following sctructure:
```
.emacs.d/
|-init.el
|-lisp/
| |-init-bootstrap.el
| |-init-theme.el
| |-init-keybindings.el
| |-init-evil.el
| |- ...
|-snippets
| |-html-mode
| |-js-mode
```
There are few common configurations files: 
* init-bootstrap.el - put you common configuration here.
* init-theme.el - appearence settings.
* init-keybindings - keybinding settings.

You can add new configurations simply running `M-x add-config [RET] [Config name] [RET]. It creates new configuration file, adds reference to init.el and opens it for editing.
You can also open existing config using `M-x open-config [RET] [Config name] [RET].
