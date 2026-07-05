# pj-cli (Homebrew tap)

Homebrew tap for [Prajnyavan](https://prajnyavan.github.io/pj-releases/) (`pj`), a
local AI coding CLI. This repo holds only the formula — compiled binaries live in
[prajnyavan/pj-releases](https://github.com/prajnyavan/pj-releases).

## Install

This repo is intentionally named `pj-cli`, not `homebrew-pj-cli`, so Homebrew's
one-line tap shorthand doesn't apply here. Install with:

```bash
brew tap prajnyavan/pj-cli https://github.com/prajnyavan/pj-cli
brew trust prajnyavan/pj-cli   # modern Homebrew requires trusting third-party taps explicitly
brew install pj
```

## Updating the formula

After a new release lands in [pj-releases](https://github.com/prajnyavan/pj-releases/releases),
bump `version` in `Formula/pj.rb` and replace each `sha256` with the checksum from
the matching `.sha256` file published alongside that release's archives.
