class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.9"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.9.tgz"
  sha256 "c5e11242b1ee0cb1a3c25a45ca7b60e49d42ee2ff985059ff44996dbfb41475a"
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
