class Runix < Formula
  desc "Zero-config cloud deployment CLI — deploy apps from Git with AI-powered runtime detection"
  homepage "https://runixcloud.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-apple-darwin.tar.gz"
      sha256 "bdfa9721ca6f76c3bd267c32fd274c5e91e68359717f3be01d4dc0618cf00611"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-apple-darwin.tar.gz"
      sha256 "2beaa75395cb8d4ed570c75be13c01736b2b27c47551bdbcb4067834ecef2899"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7cdb2717a8dbecbbf15bf617dac2b92085bd9ef9966bd0dc04b24d5785ff635"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff7ce537bae57572d08ae071f22de2c1411abf7edd5361c8c6ff492156afae27"
    end
  end

  def install
    bin.install "runix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runix --version")
  end
end
