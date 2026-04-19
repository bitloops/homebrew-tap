class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.16/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "93b75535c149b89b7a24834c6435b0bd7e979784e15c84ea7367d88707eaae27"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.16/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "9069124f20b1080b2c5fc02a77e003ad79b03cffe5a22c217dadfc6d3e981676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.16/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6268048ccfd9083c5b2d67dbfdf64954de0bd37bf9d07d6c713827c12de1a2a"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.16/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0237bb9e2f1c145e970746ade262f4032d5e2163dbbd3ba09ac2be1d6a2d75e1"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
