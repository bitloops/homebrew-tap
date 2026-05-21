class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.30/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "65c635c3fde2cf54ea471247eed1e9b4e6cb6f29616b9d697b0c205d6e3d3505"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.30/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "416561894e6d3a05a6176106765ad6b7d14e1aa19ae8b6cf4a956f0e0649a6a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.30/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "000f56c6a9ecd7b39fa89615ffe05fc0832314e38695dd7495989c535d58150b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.30/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74737cb98e2b9a39b8cade0ba4b1f19dadd9088f84f067c6c83cb3e7cdfc271a"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
