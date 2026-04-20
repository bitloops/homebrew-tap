class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.17/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "9be32b2216a3ed4458a994f1e0c650082aee4eb3c820b8e5a6588b61841b84bd"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.17/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "01a70c2ee3a594396c7a4f3f80e35ce9fcd6eeab5debbb5f4f52e7cf536245d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.17/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74f2709c95e81b78b299ea84a6a8b3b63c7d9611185c8854809af4c986daf54b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.17/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab8d1a4bd3a98fbe2a4ca8385ae8e861967984f2cb6bc8ad626808c93988a661"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
