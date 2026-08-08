cask "lane" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "4812183cad3b34759d88ad049450beea4e3c7d093e98a98f448ca4abc22ea6c1",
         intel: "2bb5b8151f1b392b984b78adb46a9c5eebf35bef6efcef5cfcf67b17f6d3243d"

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
