class Pj < Formula
  desc "Local AI operating environment with CLI, TUI, sandboxing, plugins, and MCP"
  homepage "https://prajnyavan.github.io/pj-releases/"
  version "0.1.0"

  # Binaries are published to the separate public prajnyavan/pj-releases repo —
  # the actual source is a private repo, and GitHub release assets inherit the
  # visibility of the repo they're attached to, so a private source repo can't
  # have publicly downloadable release assets directly.
  #
  # This tap repo (prajnyavan/pj-cli) is named without the usual "homebrew-"
  # prefix, so it doesn't get Homebrew's one-line `brew install user/repo/formula`
  # shorthand — install with the two-step form instead:
  #   brew tap prajnyavan/pj-cli https://github.com/prajnyavan/pj-cli
  #   brew install pj
  #
  # After cutting a new release, replace `version` above and run
  # `shasum -a 256` on each downloaded archive (or copy the .sha256 file
  # published alongside it) to update the sha256 fields below.
  on_macos do
    on_arm do
      url "https://github.com/prajnyavan/pj-releases/releases/download/v#{version}/pj-#{version}-macos-arm64.tar.gz"
      sha256 "452954890589427f25181b051f2032e14e29eb5d64408acd51603a47bf975a29"
    end
    on_intel do
      url "https://github.com/prajnyavan/pj-releases/releases/download/v#{version}/pj-#{version}-macos-x86_64.tar.gz"
      sha256 "CHANGE_ME_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    url "https://github.com/prajnyavan/pj-releases/releases/download/v#{version}/pj-#{version}-linux-x86_64.tar.gz"
    sha256 "CHANGE_ME_AFTER_FIRST_RELEASE"
  end

  def install
    bin.install "pj"
  end

  test do
    system "#{bin}/pj", "--help"
  end
end
