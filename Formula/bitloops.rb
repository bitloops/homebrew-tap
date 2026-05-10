class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.22/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "8ffc3a056bd7c6fd72c55bc2aa3bac789911b0f7fdd371716953a396c2c92ead"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.22/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "9a2ea66dfe63d8e74d4a920b1ec7c33cbba7de9af3f16265f2e3814d385bf23b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.22/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "236e1360d8bdfbb0cb22a75b25ad6c890a75985fcb451f15aca1262d8cb9d61d"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.22/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "717276b349a2de1f9a9440955fd6aacf778a36261db059bc4351c6366b06c76e"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
