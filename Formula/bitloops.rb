class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.14/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "1aaa093023de61257142498823fec4977573b555564c68ddd657d3f1874c730b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.14/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "d3bf8d2703ff385ee116f0a83a6458806021200b7d86ed083c22a77c026994db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.14/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c652726d00ea648aade0aa0189fecd7496abc7d3421852dbb020129822360787"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.14/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4e9cd72bc46dee3a71898e4d9634d246bcf8e43b7ea8b5578b4faf339465095"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
