class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.10"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.10.tgz"
  sha256 "e973d35828ff0c1502a4666b12470e2c7908acc6ff5923f3bffa1cad23c7498b"
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
