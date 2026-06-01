class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.31/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "39d1160ff11c23151c009c1dc51a0a8724085527e2b107a992fa6640b5aa5f5a"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.31/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "2c3b14fb8e2c610a45116449f9f53b281ad7c83f18806786d63196975cbc0c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.31/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ed4a0ca0ce7591ec6a95c3399ca6eb2f585625f57ba6798800866d1ff4581d8"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.31/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "219c3e5a215c8d9ef9ba78f786cfe37d1d39328bcf9a4df26c7e059ebebf40a8"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
