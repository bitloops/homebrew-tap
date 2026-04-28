class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.20/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "465b8fa018116fdcc127971ac587befa853b7b2e39f9fdd49c7614dba18cd628"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.20/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "5ac1d5c9e210bc858c8ae5fb0ca69c9921f025287af5bacdd20652e119b9471b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.20/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db5021d67332949d35571cfdf8ceb3174d5dccf652b9584c7cea0a3af489e09b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.20/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b48d0418a6e5b4d93296ea9dbad9f7ed3453501b21257f1fe7090e87b60bb3d6"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
