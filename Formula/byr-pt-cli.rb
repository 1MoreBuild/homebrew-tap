class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.2.tgz"
  sha256 "9fe9d4f0bfc740d1f9c720155651c1f3d60af8173e805b9d04c0621133127e24"
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
