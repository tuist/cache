# cache

`cache` is a specification and a CLI for adding caching to your scripts.
It's useful to weaken the dependency on CI providers' caching capabilities,
and share caching artifacts across environments.
Its design draws inspiration from [usage](https://usage.jdx.dev), which allows defining a CLI interface in scripts using comments.

## Development

### Set up

1. Clone the repository: `git clone git@github.com:tuist/cache.git`
2. Install the dependencies: `mise install`.
3. Dev the project: `mise run dev`
