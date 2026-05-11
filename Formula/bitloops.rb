class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.24/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "9ad11518f5a71587aae44f4d0fb933973abdcd8985eff8d724f2fc1dfa10c54f"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.24/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "5a6976cee53b6e2db4143b7b0054ff25ee4c1bde8570ae9b3c2eb472b38cb69c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.24/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7f1a6bdf3fc65ad4cbbdd0e660befa9f474eb0cff1c0c1db235a3340874c4a4"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.24/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e76b5b12bd0c49e954ff4203f3232444aa060a59d2f8eb609ace0d878d9f0a1a"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
