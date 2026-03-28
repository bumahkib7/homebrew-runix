class Runix < Formula
  desc "Zero-config cloud deployment CLI — deploy apps from Git with AI-powered runtime detection"
  homepage "https://runixcloud.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-apple-darwin.tar.gz"
      sha256 "6dbe50050263806cb2b328e59a2017a63c68e04e2c2e33b3522e9af714108bf9"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-apple-darwin.tar.gz"
      sha256 "36a0c4c42e960597293173b98b26821c2a2cbe7ac4818f250c7d48b3b75e018f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4da0920bd4f3f0cfc42a461b25a269fa06484c3d939063f536f07ad61d1794d"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8f6b8cd12566ae5ea2dd0409368f240285870138097420394050b09d80796f4"
    end
  end

  def install
    bin.install "runix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runix --version")
  end
end
