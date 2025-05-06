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
        cmd = if version
          "mise ls #{name} | grep '\\s#{version}'"
        else
          "mise ls #{name} | grep \"$(mise latest #{name})\""
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
    end
  end
end
