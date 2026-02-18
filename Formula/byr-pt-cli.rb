class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.11"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.11.tgz"
  sha256 "2f9eab7fb863b00205e012d7d4e7eb29d562be47b3a55f4b2904e0ace9b39a58"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "byr CLI", shell_output("#{bin}/byr help")
  end
end
