# homebrew-tap

Homebrew tap for formulas maintained by `yoshikouki`.

## Install

```bash
brew tap yoshikouki/tap
```

## Install a formula

```bash
# list formulas
brew search yoshikouki/tap

# install
brew install <formula>

# (or, without tapping first)
brew install yoshikouki/tap/<formula>
```

## Add / Update a formula (maintainers)

- Add a formula file under `Formula/<name>.rb`.
- Prefer hosting source tarballs and checksums via GitHub Releases.
- Run `brew audit --strict --new-formula <name>` and `brew test <name>` locally.

## Notes

- This is a custom tap (not `homebrew-core`), so Homebrew's public install analytics
  (as shown on `formulae.brew.sh`) typically won’t include these formulas.

