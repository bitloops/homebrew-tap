class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.12/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "10426bb3dae4f83a825e2b9709ec0331435773368cf4f6e0f6a0d7a688d33918"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.12/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "21f829fc4d27e05ef22b70ed5b4898ba9c3b466c6a25d7a74432e9fec530bfd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.12/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0880bcb51cf1c389e63b49fef524110ed214c941f941e0ffbbf6f87111441cd"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.12/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93e5102f4421281b9320534d5ba7ad72e966c836dfe79a26f4fdca846880938f"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
