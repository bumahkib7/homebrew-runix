class Runix < Formula
  desc "Zero-config cloud deployment CLI — deploy apps from Git with AI-powered runtime detection"
  homepage "https://runixcloud.dev"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-apple-darwin.tar.gz"
      sha256 "cd55c257038d2c53f42ce4f961a891e0672a0ac467705c53a07caec4e1184a04"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-apple-darwin.tar.gz"
      sha256 "8654a87b2475bd9e6b8ce573b78713a2c497b351be4b02f71da0724daef62201"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c10a448d352701570d071c3cb015c1c450bdc6487b527558f354aafb2dfa6574"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f497c650a4d94f8c2b2feb34a4d5111dde64f765004851c89e096cd90e1a3302"
    end
  end

  def install
    bin.install "runix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runix --version")
  end
end
