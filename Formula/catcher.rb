class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/gautham-v/catcher"
  url "https://github.com/gautham-v/catcher/archive/refs/tags/v0.34.0.tar.gz"
  sha256 "c8daf832ca581e7c553a6b1d5d5ce8a287f7e37b9a95696aed01db9cc724b40a"
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
