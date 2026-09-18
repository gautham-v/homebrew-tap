# The Homebrew cask for claudebar.
#
# The template for the tap. On each `v*` tag `.github/workflows/release.yml`
# builds the universal .app, fills `version` and `sha256` in below, and pushes
# the result to github.com/gautham-v/homebrew-tap as `Casks/claudebar.rb`;
# users install with `brew install --cask gautham-v/tap/claudebar`.
# The values here are the last release's and need no hand edits.
cask "claudebar" do
  version "0.2.0"
  sha256 "3dcd6a177893936c4385173f3b465c9fda7fa382f2edfd221155f7e2c080421b"

  url "https://github.com/gautham-v/claudebar/releases/download/v#{version}/Claudebar-#{version}.zip"
  name "Claudebar"
  desc "Claude usage limits in the menu bar"
  homepage "https://github.com/gautham-v/claudebar"

  # SMAppService, which launch-at-login uses, is macOS 13+.
  depends_on macos: :ventura

  app "Claudebar.app"

  caveats <<~EOS
    Turn on "Launch at login" from the popover if you want it.
  EOS

  uninstall quit: "com.gauthamv.claudebar"

  zap trash: [
    "~/.config/claudebar",
    "~/Library/Caches/claudebar",
  ]
end
