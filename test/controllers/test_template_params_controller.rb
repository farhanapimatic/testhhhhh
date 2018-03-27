# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class TemplateParamsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.template_params
  end

  # Todo: Add description for test test_send_string_array
  def test_send_string_array()
    # Parameters for the API call
    strings = JSON.parse('["abc","def"]')

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_array(strings)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"path":"/abc/def"}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_integer_array
  def test_send_integer_array()
    # Parameters for the API call
    integers = JSON.parse('[1,2,3,4,5]')

    # Perform the API call through the SDK function
    result = self.class.controller.send_integer_array(integers)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"path":"/1/2/3/4/5"}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
