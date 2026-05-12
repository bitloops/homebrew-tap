class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.25/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "e11ddfddba8a0fe58706d368a4060c9507b175864efb379e476d4c4d9b213c45"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.25/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "89e9697619d682600353876adfcc1e5ca3dc098716dd807bff3fb306a27c7d02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.25/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3751e5637e7934c3b9b0436e063c6dc9365e1c3ab7ecf53e237212885d03c93"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.25/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05afdf1443bddc1dce41f384a6056d919304f6480ac08e79e321ac154aabfbc2"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
