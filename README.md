# jayakornk/homebrew-tap

Personal Homebrew tap for [`jayakornk`](https://github.com/jayakornk) projects.

## Available formulae

| Formula | Description |
| --- | --- |
| [`kubectx-rs`](https://github.com/jayakornk/kubectx-rs) | Faster way to switch between clusters and namespaces in kubectl (Rust port). Installs both `kubectx` and `kubens`. |

## Install

```sh
brew tap jayakornk/tap
brew install kubectx-rs
```

…or the one-liner form:

```sh
brew install jayakornk/tap/kubectx-rs
```

Then use it:

```sh
kubectx               # list contexts
kubectx <NAME>        # switch to context <NAME>
kubens <NAMESPACE>    # switch namespace
```

## Upgrade

```sh
brew update
brew upgrade kubectx-rs
```

## Uninstall

```sh
brew uninstall kubectx-rs
brew untap jayakornk/tap
```

## Notes

- The formula builds `kubectx-rs` from source using the Homebrew `rust` toolchain (edition 2024).
- Prebuilt binaries for macOS (arm64/x86_64) and Linux (x86_64/arm64) are also published on the [kubectx-rs releases page](https://github.com/jayakornk/kubectx-rs/releases) if you prefer not to compile via Homebrew.