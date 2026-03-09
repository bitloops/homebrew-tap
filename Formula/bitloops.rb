class Bitloops < Formula
  desc "The bitloops CLI"
  homepage "https://github.com/bitloops/bitloops"
  version "0.0.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "33bfc5b6856adc7d370d84d859f47023ca9deb63dd8cc5070af10a8ea3b5f136"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "150468785b5158f9906d0144e5195bf2146271f9e298496f8891a3da098c111d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "095ee6571852c90d1ed769b9ad6950bc8cc9e875d0399f46110254fc16ce974b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79277b250323fc7ce99162e7f5e213969d4fe4a69e68f95e895e9302da61335a"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system "#{bin}/bitloops", "--version"
  end
end
