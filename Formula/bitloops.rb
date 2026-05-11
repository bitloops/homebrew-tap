class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.23/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "8f7a117f2a329f6d7416bd95679015ab7ab77c6464dc38bc8f2db3d07a9845e9"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.23/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "9a7ba6fcf2f8fc556c62cce2f01c2d982d168dac53b144d7c2554a33e59b0b95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.23/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d9fa7e4d7a9658e72c5cddf11c133758657e229eeb7648e1611727a8c1fa3cb"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.23/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ff8d485a7e74045c2c3778dd099ae481dfee06c608950018f48b3a388411d3e"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
