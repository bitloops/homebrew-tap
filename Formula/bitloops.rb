class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.27/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "e28edf2143edf8a4ac424d77addf047fbf37986560c5a023f74fa74d6e5f1be5"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.27/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "7459a87773f56959d87809b4ba1ea7c04d811fb79a48cdb924d8180b1e075bcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.27/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f080263cbe77e07bcda8c89a8f70e69c5d3c221928310bec42d2ba85c787e475"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.27/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e74e4331506f837515defb49cbf718a86370fb3703bab4e3a313c0a69caecb10"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
