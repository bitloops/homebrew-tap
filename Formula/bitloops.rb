class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.19/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "9ca6717a85786334c0a3a5402ea1b376d4de8033ca878bf6f422fd36f902b343"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.19/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "bcd4c8b3a36df5eb6fc86f8cb75163270c1d5347d02e1cfe9747d9557af997c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.19/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d00372e57d0844f7b1fb85bfd86cb7b573a6c63d2c51fa56fa01baaff50eba9b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.19/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a858895fa8358a3f731ec26d2536be15b82ef2ae9e00cd28b97e2485b783e5e8"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
