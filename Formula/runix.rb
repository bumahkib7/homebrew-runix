class Runix < Formula
  desc "Zero-config cloud deployment CLI — deploy apps from Git with AI-powered runtime detection"
  homepage "https://runixcloud.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bumahkib7/runix/releases/download/v#{version}/runix-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix/releases/download/v#{version}/runix-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bumahkib7/runix/releases/download/v#{version}/runix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix/releases/download/v#{version}/runix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "runix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runix --version")
  end
end
