class Bitloops < Formula
  desc "Track AI coding sessions and link them to Git commits locally"
  homepage "https://github.com/bitloops/bitloops"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.11/bitloops-aarch64-apple-darwin.tar.gz"
      sha256 "535f13d65a7dd05585945f8fa1ae41931ed9bd29a5275603545f59ac5a78ad19"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.11/bitloops-x86_64-apple-darwin.tar.gz"
      sha256 "da8f558e1b5d9d75969023eda4f09cdbd0937444c965bcbc14df922a061a4b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.11/bitloops-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8c995ab9073c520a759817bcf794b4e8d4f6fcdf84b012ceda427a11b30e2c8"
    end
    on_intel do
      url "https://github.com/bitloops/bitloops/releases/download/v0.0.11/bitloops-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3f732a25f1654c75e5345e2f0df8d017bfa13fd11121755589790c813485754"
    end
  end

  def install
    bin.install "bitloops"
  end

  test do
    system bin/"bitloops", "--version"
  end
end
