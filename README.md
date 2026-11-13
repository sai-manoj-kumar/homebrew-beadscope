# homebrew-beadscope

Homebrew tap for [Beadscope](https://github.com/sai-manoj-kumar/beadscope), a local
web UI for the [beads](https://github.com/gastownhall/beads) (`bd`) issue tracker.

```bash
brew install sai-manoj-kumar/beadscope/beadscope
beadscope start
```

The formula installs the published npm package and its dependencies, plus Node and
`bd`. Upgrade with `brew upgrade beadscope`.

Homebrew 7 refuses to load formulae from a tap it has not been told to trust. If the
install stops with "untrusted tap", run `brew trust sai-manoj-kumar/beadscope` and
install again.
