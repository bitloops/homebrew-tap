class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.26/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "94263e3a56bd2c3f6a50e4e7f6e4f0f5eb2662cfa6d79ffa9cae6dfe3b50732b"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.26/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "21f33424055553726471479fd41002ac498ae9ec0165ca987e58c4b836158b15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.26/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3835523852347df4d24f953ab09f2fd68f2aac93eb16dfc9e1cb398e73a809ad"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.26/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "efbdd2902f888454678c00014f22a5276ae7746883581a77298ddfe034a2fd35"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
