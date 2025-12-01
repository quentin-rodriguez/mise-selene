# mise-selene

A [mise](https://mise.jdx.dev) plugin for [selene](https://kampfkarren.github.io/selene) - lua linter written in Rust.

For more information, see the [repository](https://github.com/Kampfkarren/selene)

## Installation

```bash
mise plugin install selene https://github.com/quentin-rodriguez/mise-selene.git
```

## Usage

```bash
# List all available versions
mise ls-remote selene

# Install a specific version
mise install selene@0.29.0

# Set as global default
mise use -g selene@0.29.0

# Set as project default
mise use selene@0.29.0
```

## Development

This project uses [hk](https://hk.jdx.dev) for pre-commit hooks and linting.

```bash
# Install pre-commit hooks
hk install

# Run linting manually
mise run lint

# Run all CI checks
mise run ci
```

## Licence

This plugin is licensed under the MIT License. 

See [LICENSE](LICENSE) for details.

