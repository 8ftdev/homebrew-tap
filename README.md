# Kuit Homebrew tap

Install the Kuit CLI on macOS or Linux:

```sh
brew install 8ftdev/tap/kuit
```

The CLI requires [Bun](https://bun.sh/) to initialize and run its local viewer. Install Bun separately before running `kuit init`.

The [update workflow](.github/workflows/update-kuit.yml) checks for a new published Kuit release every Monday at 08:17 UTC. It uses GoReleaser's published checksums to update the formula. Maintainers can also run it manually after a release.
