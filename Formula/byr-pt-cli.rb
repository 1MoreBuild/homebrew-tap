class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.4.tgz"
  sha256 "0f2c64923644fd38192b19dc88e77ef669d75897c1a2b41da2e787c280533dee"
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
