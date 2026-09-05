class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/gautham-v/catcher"
  url "https://github.com/gautham-v/catcher/archive/refs/tags/v0.14.1.tar.gz"
  sha256 "b96fd85687c15efa9ab9c06c8c951ba094c5468c4af5b652085edb2d2c80dd8e"
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
