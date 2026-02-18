class ByrPtCli < Formula
  desc "BYR CLI with OpenClaw-friendly JSON contract"
  homepage "https://github.com/1MoreBuild/clawkit"
  version "0.1.5"
  url "https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-0.1.5.tgz"
  sha256 "87711510eb89abf03b53097a724ec0218703dfde019cac4dfcee3e51d6fb0bac"
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
