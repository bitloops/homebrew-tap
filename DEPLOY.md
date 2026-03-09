# Bitloops Homebrew Tap Deploy Flow

This repo publishes new `bitloops` versions to Homebrew via formula updates in this tap.

## Release Steps

1. Release a new CLI version in `bitloops/bitloops` (push tag like `v0.1.0`).
2. Wait for the CLI release workflow to:
   - build artifacts
   - publish GitHub Release assets
   - publish `checksums-sha256.txt`
   - open/update a PR in `bitloops/homebrew-tap`
3. In the tap PR, verify:
   - `Formula/bitloops.rb` has the new version URLs
   - macOS + Linux checksums are updated (arm + intel)
   - `audit` / `tests` workflows are green
4. Merge the tap PR to `main`.

After merge, the new version is available from the tap.

## User Commands

Fresh install:

```bash
brew update
brew install bitloops/tap/bitloops
```

Upgrade existing install:

```bash
brew update
brew upgrade bitloops/tap/bitloops
```

Verify installed version:

```bash
bitloops --version
```

## Manual Fallback (if tap PR automation fails)

1. Open a PR in this repo updating:
   - `Formula/bitloops.rb.template`
   - `Formula/bitloops.rb`
2. Run checks locally:

```bash
brew tap bitloops/tap "$(pwd)"
brew audit --strict --new bitloops/tap/bitloops
brew install bitloops/tap/bitloops
brew test bitloops/tap/bitloops
```

3. Merge PR after CI passes.
