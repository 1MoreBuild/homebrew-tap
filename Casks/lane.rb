cask "lane" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-test.2"
  sha256 arm:   "f6a1df80159f3ceaf185b36cd720353872273535e85f51581dc3b8fc5325b907",
         intel: "dcd060a626022df82ea4ebbd87f4fddeebed04e4cffd11e94e25c4c66c90e9ac"

  url "https://github.com/1MoreBuild/Lane/releases/download/v#{version}/Lane-#{version}-mac-#{arch}.dmg",
      verified: "github.com/1MoreBuild/Lane/"
  name "Lane"
  desc "Private local AI gateway for macOS"
  homepage "https://github.com/1MoreBuild/Lane"

  app "Lane.app"

  caveats <<~EOS
    Lane is currently an unsigned developer preview. If macOS blocks the first
    launch, follow Lane's test-build guide:
      https://github.com/1MoreBuild/Lane/blob/main/docs/TEST_BUILDS.md

    Do not disable Gatekeeper globally.
  EOS
end
