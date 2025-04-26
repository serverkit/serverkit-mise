# frozen_string_literal: true

require "serverkit/resources/base"

module Serverkit
  module Resources
    class MiseUse < Base
      attribute :name, required: true, type: String
      attribute :version, type: String
      attribute :global, type: [TrueClass, FalseClass], default: true

      # @note Override
      def apply
        run_command("mise use #{global_option} #{name_with_version}")
      end

      # @note Override
      def check
        cmd = if global
          "mise ls --cd $HOME #{name} | grep '#{version_or_latest}'"
        else
          "mise ls --current #{name} | grep '#{version_or_latest}'"
        end
        check_command(cmd)
      end

      private

      # @note Override
      def default_id
        name
      end

      # @return [String]
      # @example "ruby@3.4.3"
      def name_with_version
        if version
          "#{name}@#{version}"
        else
          name
        end
      end

      # @return [String]
      def version_or_latest
        version || "latest"
      end

      def global_option
        "--global" if global
      end
    end
  end
end
