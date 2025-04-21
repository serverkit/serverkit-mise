# frozen_string_literal: true

require "serverkit/resources/base"

module Serverkit
  module Resources
    class MiseInstall < Base
      attribute :name, required: true, type: String
      attribute :version, type: String

      # @note Override
      def apply
        run_command("mise install #{name_with_version}")
      end

      # @note Override
      def check
        check_command(" mise ls #{name} | grep '#{version_or_latest}'")
      end

      private

      # @note Override
      def default_id
        name
      end

      # @return [String]
      # @example "git-plus@4.4.11"
      def name_with_version
        if version
          "#{name}@#{version}"
        else
          name
        end
      end

      def version_or_latest
        version || "latest"
      end
    end
  end
end
