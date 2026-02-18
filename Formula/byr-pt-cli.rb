class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.6"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.6.tgz"
  sha256 "412d60beb6b2b086934f419e5d8fc2c76f6583f90b1eb16422a6b084f1524574"
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
