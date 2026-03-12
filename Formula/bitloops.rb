class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.10/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "b6fe6e240e3ef66432a3078ea1dfd4847568e1daac6b74712f2fd87937efc42a"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.10/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "cfbfc64b5b4388790ad6638a800638b7e856654882d4fa805a90b3001bb50d86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.10/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4618458c9122291787ddd3340549f286a9ebdebe0f71ec6a03aa643ba987e809"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.10/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f80f24ef2cf4dab134ac2172142a0cc941223bd57223283d252732660fea5102"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
