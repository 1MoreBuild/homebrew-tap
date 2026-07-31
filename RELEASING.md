# Releasing

This tap tracks GitHub releases of `Lane` and npm releases of `byr-pt-cli`.

## Lane

1. Publish and verify both Lane macOS release artifacts.
2. Update `Casks/lane.rb` with the version and SHA-256 for the Apple Silicon
   and Intel DMGs.
3. Run:
   - `brew style Casks/lane.rb`
   - `brew audit --strict --cask Casks/lane.rb`
   - `brew install --cask Casks/lane.rb`
4. Confirm that Homebrew selected the native architecture and installed
   `Lane.app`.

## byr-pt-cli

1. Publish a new npm version from `clawkit`:
   - `npm view byr-pt-cli version`
2. Update formula URL and SHA:
   - `./scripts/update-byr-pt-cli-formula.sh <version>`
3. Run local Homebrew checks:
   - `brew style Formula/byr-pt-cli.rb`
   - `brew audit --strict Formula/byr-pt-cli.rb`
4. Commit and push:
   - `git add Formula/byr-pt-cli.rb`
   - `git commit -m "chore: bump byr-pt-cli to v<version>"`
   - `git push`
5. Verify install from tap:
   - `brew install 1MoreBuild/tap/byr-pt-cli`
   - `byr help`
