# Releasing

This tap tracks npm releases of `byr-pt-cli`.

## Checklist

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
