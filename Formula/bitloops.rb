class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.15/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "bf549323ca8d335a362e5ac796009dc24a2779042fa940861ac08ee8c38e9ae5"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.15/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "00f1b5090e529c8c3ab3e751aa3450fdb740a130bec39aefeb413308e5de1667"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.15/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51787b1eab3f4f0465713c43d75b1aca8b55ba735860402a063f82f098c0e541"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.15/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18ebb4a50201e0200531eaabedb62e90075506b8ebc8d42a35d6a7f2ee66ddf3"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
