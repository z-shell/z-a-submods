<h2 align="center">
  <a href="https://github.com/z-shell/zi">
    <img src="https://github.com/z-shell/zi/raw/main/docs/images/logo.svg" alt="Logo" width="80" height="80">
  </a>
❮ ZI ❯ Annex - submods
</h2>

A annex (i.e. an extension for – [ZI](https://z-shell.github.io/zi))
that allows to clone additional submodules when installing a plugin or
snippet. The submodules are then automatically updated on the `zi update ...`
command.

This annex adds `submods''` ice to ZI which has the following syntax:

```zsh
submods'{user}/{plugin} -> {output directory}; ...'
```

An example command utilizing the annex and its ice:

```zsh
# Load the `zsh-autosuggestions' plugin via Prezto module: `autosuggestions'
zi ice svn submods'zsh-users/zsh-autosuggestions -> external'
zi snippet PZT::modules/autosuggestions
```

## Installation

Simply load as a plugin. This will install the annex within ZI:

```zsh
zi light z-shell/z-a-submods
```

After this you can use the `submods''` ice.
