[![Test](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml/badge.svg)](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml)
[![Gem Version](https://badge.fury.io/rb/serverkit-mise.svg)](https://badge.fury.io/rb/serverkit-mise)

# serverkit-mise

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [mise](https://github.com/jdx/mise).

## Installation

```rb
# Gemfile
gem "serverkit-mise"
```

## Usage

### Prerequisites

- Ensure you have [serverkit](https://github.com/serverkit/serverkit) gem installed
- Ensure you have [mise](https://github.com/jdx/mise) installed on your system

### Basic Example

Create a recipe file that uses the mise resources:

```yaml
# recipe.yml
resources:
  # Install Node.js using mise
  - type: mise_install
    name: node
    version: 20.10.0
  # Install Ruby and set it as global
  - type: mise_use
    name: ruby
    version: 3.3.0
```

Then apply your recipe with Serverkit:

```console
$ serverkit apply recipe.yml
```

## Resource

### mise_install

Install specified tool via mise.

#### Attributes

- `name` - tool name (required)
- `version` - tool version (optional)

#### Example

```yaml
resources:
  - type: mise_install
    name: go
  - type: mise_install
    name: ruby
    version: 3.4.3
```

### mise_use

Install specified tool and add the version to `mise.yml`.

#### Attributes

- `name` - tool name (required)
- `version` - tool version (optional, if not specified, the latest version will be installed)
- `global` - global option (optional, default: `true`)

#### Example

```yaml
resources:
  - type: mise_use
    name: go
    version: '1.23'
    global: false
  - type: mise_use
    name: ruby
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [serverkit/serverkit-mise](https://github.com/serverkit/serverkit-mise).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
