class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.29/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "6bd17092e1181efb88b528bc37dabb0c4b2990483666ee95f422c6ca15252e4d"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.29/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "ed67ffa184a630fda177c2e910b399308bdf5e71cafcb0a69579d7b76425d711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.29/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afde7619fef3fc2a662bdb98b5fa21ef557d3c3e543209514408d1013160923a"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.29/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8399708e06350a7e51d9c63338c58bf16bff12d87f259596e6124e44b322c92a"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
