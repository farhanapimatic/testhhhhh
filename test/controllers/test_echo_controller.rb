# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class EchoControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.echo
  end

  # Todo: Add description for test test_json_echo
  def test_json_echo()
    # Parameters for the API call
    input = JSON.parse('{"uid":"1123213","name":"Shahid"}')

    # Perform the API call through the SDK function
    result = self.class.controller.json_echo(input)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"body":{"uid":"1123213","name":"Shahid"}}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
