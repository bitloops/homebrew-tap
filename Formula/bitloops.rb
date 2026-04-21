class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.18/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "246052a55c8297537ed6514b13e2f8d7519f2ff9b1831ee742bd173da8a1ebb3"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.18/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "6a93c4133b4d609e171c9623ffaad06c701533ab75e295c59f0f2072c381b24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.18/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "654cc41d58c760e2f95d50b4813a95cfddece75db055dedcec6f25dcaf2d391e"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.18/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b94cb5081990b4a406831b1e0ee70d57d5de950cdcfad5adf18e101119654f04"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
