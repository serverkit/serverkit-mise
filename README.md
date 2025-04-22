[![Test](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml/badge.svg)](https://github.com/serverkit/serverkit-mise/actions/workflows/test.yml)

# serverkit-mise

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [mise](https://github.com/jdx/mise).

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/serverkit-mise.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
