cask "lane" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "6c8bc70e6026083433e1dcddc76da834f6301ac5a51e465eadebfec45c5771f3",
         intel: "9753852f7fd6be6d599275c4e0f7968f8edb5c6123dd2dfbeb5220f736a7cdfe"

  url "https://github.com/1MoreBuild/Lane/releases/download/v#{version}/Lane-#{version}-mac-#{arch}.dmg",
      verified: "github.com/1MoreBuild/Lane/"
  name "Lane"
  desc "Private local AI gateway"
  homepage "https://github.com/1MoreBuild/Lane"

  depends_on :macos

  app "Lane.app"

  caveats <<~EOS
    Lane is currently an unsigned public preview. If macOS blocks the first
    launch, follow Lane's test-build guide:
      https://github.com/1MoreBuild/Lane/blob/main/docs/TEST_BUILDS.md

    Do not disable Gatekeeper globally.
  EOS
end
