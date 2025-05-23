# frozen_string_literal: true

require_relative "lib/serverkit/mise/version"

Gem::Specification.new do |spec|
  spec.name = "serverkit-mise"
  spec.version = Serverkit::Mise::VERSION
  spec.authors = ["toshimaru"]
  spec.email = ["me@toshimaru.net"]

  spec.summary = "Serverkit plug-in for mise."
  spec.description = "Serverkit plug-in for mise."
  spec.homepage = "https://github.com/serverkit/serverkit-mise"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/serverkit/serverkit-mise"
  spec.metadata["changelog_uri"] = "https://github.com/serverkit/serverkit-mise/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "serverkit", ">= 1.0.0"
end
