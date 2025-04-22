# frozen_string_literal: true

require "serverkit/resources/base"

module Serverkit
  module Resources
    class MiseUse < Base
      attribute :name, required: true, type: String
      attribute :version, type: String

      # @note Override
      def apply
        run_command("mise use #{name_with_version}")
      end

      # @note Override
      def check
        check_command(" mise ls --current #{name} | grep '#{version_or_latest}'")
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

      def version_or_latest
        version || "latest"
      end
    end
  end
end
