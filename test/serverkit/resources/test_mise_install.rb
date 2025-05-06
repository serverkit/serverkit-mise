# frozen_string_literal: true

require "test_helper"

class Serverkit::Resources::TestMiseInstall < Minitest::Test
  ATTRIBUTES = {"name" => "test"}

  def setup
    @resource = Serverkit::Resources::MiseInstall.new({}, ATTRIBUTES)
  end

  def test_resource_instance
    assert_instance_of Serverkit::Resources::MiseInstall, @resource
  end

  def test_apply
    @resource.stub :run_command, ->(cmd) { cmd } do
      assert_equal("mise install test", @resource.apply)
    end
  end

  def test_check
    @resource.stub :check_command, ->(cmd) { cmd } do
      assert_equal('mise ls test | grep "$(mise latest test)"', @resource.check)
    end
  end
end
