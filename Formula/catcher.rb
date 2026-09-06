class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/gautham-v/catcher"
  url "https://github.com/gautham-v/catcher/archive/refs/tags/v0.18.1.tar.gz"
  sha256 "229efcf584ff14c95328e74cbd74b7d65ee11a6eba44e52ef9586e7be6eecf65"
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
