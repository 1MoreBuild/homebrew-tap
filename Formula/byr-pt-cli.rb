class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.1.tgz"
  sha256 "b12458e8155be6ea1b040215cf3e78bc67f87e790d9e120795ed874a3a6c865d"
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
