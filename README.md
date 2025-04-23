[![Test](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml/badge.svg)](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml)

# serverkit-mise

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [mise](https://github.com/jdx/mise).

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add serverkit-mise
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install serverkit-mise
```

## Usage

TODO: Write usage instructions here

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
- `version` - tool version (optional)

#### Example

```yaml
resources:
  - type: mise_use
    name: go
    version: '1.23'
  - type: mise_use
    name: ruby
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [serverkit/serverkit-mise](https://github.com/serverkit/serverkit-mise).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
