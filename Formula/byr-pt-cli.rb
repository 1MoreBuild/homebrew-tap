class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.8"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.8.tgz"
  sha256 "7b38f1ecc847be60220ddcb1640d4f445c98146cee7a9490aa56c372ed035931"
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
