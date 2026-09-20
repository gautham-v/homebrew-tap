# The Homebrew cask for scorebar.
#
# The template for the tap. On each `v*` tag `.github/workflows/release.yml`
# builds the universal .app, fills `version` and `sha256` in below, and pushes
# the result to github.com/gautham-v/homebrew-tap as `Casks/scorebar.rb`;
# users install with `brew install --cask gautham-v/tap/scorebar`.
# The values here are the last release's and need no hand edits.
cask "scorebar" do
  version "0.1.4"
  sha256 "744b2a98e936ff44a314998aca74845e4f652cb87e4bfa82e495781ac9f993a5"

  url "https://github.com/gautham-v/scorebar/releases/download/v#{version}/Scorebar-#{version}.zip"
  name "Scorebar"
  desc "Live fantasy football matchups in the menu bar"
  homepage "https://github.com/gautham-v/scorebar"

  # gpui's metal renderer wants a recent macOS.
  depends_on macos: :ventura

  app "Scorebar.app"

  uninstall quit: "com.gauthamv.scorebar"

  zap trash: [
    "~/.config/scorebar",
    "~/Library/Caches/scorebar",
  ]
end
