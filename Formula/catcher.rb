class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/gautham-v/catcher"
  url "https://github.com/gautham-v/catcher/archive/refs/tags/v0.20.0.tar.gz"
  sha256 "cbb3756164ea757c9478dae8df0d4046d6de1bceec7c5b7431a3810d58d79b0d"
  license "MIT"
  head "https://github.com/gautham-v/catcher.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"catcher", :exist?
  end
end
