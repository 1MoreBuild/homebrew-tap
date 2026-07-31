cask "lane" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "82e31b44cfd37508eff3ccfa90272fde2b79a1a0175fa3ca76774b2b79f787b3",
         intel: "db89840c9db685306d69352809e00724b2db447318e7ea665ed2a483ebe790a4"

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
