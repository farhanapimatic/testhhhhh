# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class HeaderControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.header
  end

  # Todo: Add description for test test_send_headers
  def test_send_headers()
    # Parameters for the API call
    options = {}
    options['custom_header'] = 'TestString'
    options['value'] = 'TestString'

    # Perform the API call through the SDK function
    result = self.class.controller.send_headers(options)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
