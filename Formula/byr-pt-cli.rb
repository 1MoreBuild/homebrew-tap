class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.7"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.7.tgz"
  sha256 "205a3030efd5edea9cc9d12d856bd818ca8d262ee0f156fc2bc4c3039cb83a4d"
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
