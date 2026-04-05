class Runix < Formula
  desc "Zero-config cloud deployment CLI — deploy apps from Git with AI-powered runtime detection"
  homepage "https://runixcloud.dev"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-apple-darwin.tar.gz"
      sha256 "564352fa45bf3948baec7b045a24d5db216867d61051ae9887d5d7540cbd6975"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-apple-darwin.tar.gz"
      sha256 "71950316d95c4a5d6db747e636196d89ee7e587e22839f5df6a4a3d5bded6d3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6b68a627583bfea3e8bcb0ab9b7f12de9f218e5cc6492ac7175e0d6504c71e0"
    end

    on_intel do
      url "https://github.com/bumahkib7/runix-releases/releases/download/v#{version}/runix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aacceb4e927d9ca2234a2fea40314925f6beae23ef3ccf864244e9a4591c1c5c"
    end
  end

  def install
    bin.install "runix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runix --version")
  end
end
