class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.3.tgz"
  sha256 "76823a118d15d2e40b5f37a5fd586b2a3b0343db9376f9e69344b35e8dc86ba9"
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
