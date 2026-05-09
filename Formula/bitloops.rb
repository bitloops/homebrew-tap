class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.21/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "c76ee9d06d0885b750f6804805b0a8e37bec93ebe3f5fe39c619679954247dc0"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.21/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "a73b3ff55d054202e6950faaa84200660d0d9e8584ec3754f2215c45fdedad86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.21/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "709f39caa5655868617b3f453268eabccceae6d19c3299e2160db95f667f7577"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.21/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "987885e85bf97b16e4b60860f6809039502e4874aa089222ad9a40230773b627"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
