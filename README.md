# cache

`cache` is a specification and a CLI for adding caching to your scripts.
It's useful to weaken the dependency on CI providers' caching capabilities,
and share caching artifacts across environments.
Its design draws inspiration from [usage](https://usage.jdx.dev), which allows defining a CLI interface in scripts using comments.

## Usage

First, `cache` using [Mise](https://mise.jdx.dev) running `mise use -g ubi:tuist/cache@latest`.

Then adjust your script shebang to use the `cache` CLI and then configure the caching using comments:

```bash
#!/usr/bin/env cache bash
# CACHE paths [".build"]
# CACHE key ""
# CACHE restore_keys []

swift build
```

## Development

### Set up

1. Clone the repository: `git clone git@github.com:tuist/cache.git`
2. Install the dependencies: `mise install`.
3. Dev the project: `mise run dev`
