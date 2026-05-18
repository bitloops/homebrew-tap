class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.28/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "683ae67d792d4b94b693e8d6bbc90bf71cc9ee6cc0e393f08777de69c73c3af9"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.28/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "70dc68825da08f628877376090d31437fd7a2c52d349242152d62f61e2661a15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.28/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97d78c87f9b324f7071af47d69d10076f5bb678b88d6b15c6d3967a7c08f0b6d"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.28/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7bbb836d62781947bea52368a58b96d447279494c01d0cb214a4e780babf1392"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
