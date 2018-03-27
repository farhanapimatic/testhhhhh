# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class ErrorCodesControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.error_codes
  end

  # Todo: Add description for test test_get_501
  def test_get_501()

    # Perform the API call through the SDK function
    assert_raise('NestedModelException'){ 
      result = self.class.controller.get_501()
    }

    # Test response code
    assert_equal(@response_catcher.response.status_code, 501)
  end

  # Todo: Add description for test test_get_400
  def test_get_400()

    # Perform the API call through the SDK function
    assert_raise('APIException'){ 
      result = self.class.controller.get_400()
    }

    # Test response code
    assert_equal(@response_catcher.response.status_code, 400)
  end

  # Todo: Add description for test test_get_500
  def test_get_500()

    # Perform the API call through the SDK function
    assert_raise('GlobalTestException'){ 
      result = self.class.controller.get_500()
    }

    # Test response code
    assert_equal(@response_catcher.response.status_code, 500)
  end

end
