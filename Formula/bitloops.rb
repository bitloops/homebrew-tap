class Bitloops < Formula
  desc "The bitloops CLI"
  homepage "https://github.com/bitloops/bitloops"
  version ""
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/bitloops/bitloops/releases/download/v#{version}/bitloops-x86_64-unknown-linux-musl.tar.gz"
    sha256 ""
  end

  def install
    bin.install "bitloops"
  end

  test do
    system "#{bin}/bitloops", "--version"
  end
end
