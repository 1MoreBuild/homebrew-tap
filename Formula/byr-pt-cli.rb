class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.0.tgz"
  sha256 "685af541b35b9d64b1ae0e75361af31f59a960b1b97a8922f13de07beae1a9fe"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "byr CLI", shell_output("#{bin}/byr --help")
  end
end
