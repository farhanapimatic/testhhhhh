# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require 'json'
require 'test/unit'
require 'tester_pc.rb'
require_relative '../test_helper.rb'
require_relative '../http_response_catcher.rb'

class ControllerTestBase < Test::Unit::TestCase
  include TesterPc

  class << self
    attr_accessor :controller
  end

  # Called only once for a test class before any test has executed.
  def self.startup		
    @@api_client = TesterPcClient.new
    @@request_timeout = 60
    @@assert_precision = 0.1

    # Set Configuration parameters for test execution
    Configuration.port = '3000'
    Configuration.suites = SuiteCode::DIAMONDS
    Configuration.environment = Configuration::Environment::TESTING
  end

  # Called once before every test case.
  def setup
    @response_catcher = HttpResponseCatcher.new
    self.class.controller.http_call_back = @response_catcher
  end
end