class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/gautham-v/catcher"
  url "https://github.com/gautham-v/catcher/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "b0a66a0265f108442c74644ee065ab2eb13c552e071431e8eb2dd780108ad694"
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
