# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class QueryParamControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.query_param
  end

  # Todo: Add description for test test_date_array
  def test_date_array()
    # Parameters for the API call
    dates = JSON.parse('["1994-02-13","1994-02-13"]').map { |element| Date.iso8601(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.date_array(dates)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_optional_dynamic_query_param
  def test_optional_dynamic_query_param()
    # Parameters for the API call
    name = 'farhan'

    # dictionary for optional query parameters
    optional_query_parameters = {}
    optional_query_parameters['field'] =  'QA'

    # Perform the API call through the SDK function
    result = self.class.controller.optional_dynamic_query_param(name, optional_query_parameters)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_date
  def test_date()
    # Parameters for the API call
    date = Date.parse('1994-02-13')

    # Perform the API call through the SDK function
    result = self.class.controller.date(date)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_unix_date_time_array
  def test_unix_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('[1484719381,1484719381]').map { |element| Time.at(element).utc.to_datetime }

    # Perform the API call through the SDK function
    result = self.class.controller.unix_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_unix_date_time
  def test_unix_date_time()
    # Parameters for the API call
    datetime = Time.at(1484719381).utc.to_datetime

    # Perform the API call through the SDK function
    result = self.class.controller.unix_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc_1123_date_time
  def test_rfc_1123_date_time()
    # Parameters for the API call
    datetime = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

    # Perform the API call through the SDK function
    result = self.class.controller.rfc_1123_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc_1123_date_time_array
  def test_rfc_1123_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('["Sun, 06 Nov 1994 08:49:37 GMT","Sun, 06 Nov 1994 08:49:37 GMT"]').map { |element| DateTime.httpdate(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.rfc_1123_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc_3339_date_time_array
  def test_rfc_3339_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('["1994-02-13T14:01:54.9571247Z","1994-02-13T14:01:54.9571247Z"]').map { |element| DateTime.rfc3339(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.rfc_3339_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc_3339_date_time
  def test_rfc_3339_date_time()
    # Parameters for the API call
    datetime = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

    # Perform the API call through the SDK function
    result = self.class.controller.rfc_3339_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_no_params
  def test_no_params()

    # Perform the API call through the SDK function
    result = self.class.controller.no_params()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_param
  def test_string_param()
    # Parameters for the API call
    string = 'l;asd;asdwe[2304&&;\'.d??\\a\\\\\\;sd//'

    # Perform the API call through the SDK function
    result = self.class.controller.string_param(string)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_url_param
  def test_url_param()
    # Parameters for the API call
    url = 'https://www.shahidisawesome.com/and/also/a/narcissist?thisis=aparameter&another=one'

    # Perform the API call through the SDK function
    result = self.class.controller.url_param(url)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_number_array
  def test_number_array()
    # Parameters for the API call
    integers = JSON.parse('[1,2,3,4,5]')

    # Perform the API call through the SDK function
    result = self.class.controller.number_array(integers)

    # Test response code
    assert([*200..208].include? @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_array
  def test_string_array()
    # Parameters for the API call
    strings = JSON.parse('["abc","def"]')

    # Perform the API call through the SDK function
    result = self.class.controller.string_array(strings)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_simple_query
  def test_simple_query()
    # Parameters for the API call
    options = {}
    options['boolean'] = true
    options['number'] = 4
    options['string'] = 'TestString'

    # dictionary for optional query parameters
    optional_query_parameters = {}

    # Perform the API call through the SDK function
    result = self.class.controller.simple_query(options, optional_query_parameters)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_enum_array
  def test_string_enum_array()
    # Parameters for the API call
    days = JSON.parse('["Tuesday","Saturday","Wednesday","Monday","Sunday"]')

    # Perform the API call through the SDK function
    result = self.class.controller.string_enum_array(days)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_multiple_params
  def test_multiple_params()
    # Parameters for the API call
    options = {}
    options['number'] = 123412312
    options['precision'] = 1112.34
    options['string'] = '""test./;";12&&3asl"";"qw1&34"///..//.'
    options['url'] = 'http://www.abc.com/test?a=b&c="http://lolol.com?param=no&another=lol"'

    # Perform the API call through the SDK function
    result = self.class.controller.multiple_params(options)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_integer_enum_array
  def test_integer_enum_array()
    # Parameters for the API call
    suites = JSON.parse('[1,3,4,2,3]')

    # Perform the API call through the SDK function
    result = self.class.controller.integer_enum_array(suites)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
