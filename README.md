# confirm-quit.yazi

Make repo for [confirm-quit](https://yazi-rs.github.io/docs/tips#confirm-quit) so that it can be installed via `ya`.

## Installation

```sh
ya pkg add wekauwau/confirm-quit
```

## Usage

To bind your <kbd>q</kbd> key to the plugin, add in your `~/.config/yazi/keymap.toml`:

```toml
[[mgr.prepend_keymap]]
on  = "q"
run = "plugin confirm-quit"
```
