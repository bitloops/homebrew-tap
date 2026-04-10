class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.13/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "4e4cc8ccdc305dcdb4b8dfc57a7ed2cfb0fef1a01d46a23f5890d81f3d058c83"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.13/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "9839d17d782edf58fed2b1832dfe860e5e5fc1df53914e90c8c7676307fe831f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.13/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3edf026d90693795fda545fa808022e436f64694398084f55471765db52df2f"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.13/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68665b9c5659de06881713da456013e1119e6bcacca30112a2a6beacbc807677"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
