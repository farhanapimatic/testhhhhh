# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class FormParamsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.form_params
  end

  # Todo: Add description for test test_delete_form_test
  def test_delete_form_test()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":"farhan","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_multiliner_name
  def test_delete_form_test_with_multiliner_name()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":"farhan\\nnouman","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_special_characters_field
  def test_delete_form_test_with_special_characters_field()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":"farhan","field":"&&&"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_blank_field
  def test_delete_form_test_with_blank_field()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":"farhan","field":" "}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_blank_name_field
  def test_delete_form_test_with_blank_name_field()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":" ","field":" "}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_blank_name
  def test_delete_form_test_with_blank_name()
    # Parameters for the API call
    body = DeleteBody.from_hash(JSON.parse('{"name":" ","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_date_array
  def test_send_date_array()
    # Parameters for the API call
    dates = JSON.parse('["1994-02-13","1994-02-13"]').map { |element| Date.iso8601(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.send_date_array(dates)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_date
  def test_send_date()
    # Parameters for the API call
    date = Date.parse('1994-02-13')

    # Perform the API call through the SDK function
    result = self.class.controller.send_date(date)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_unix_date_time
  def test_send_unix_date_time()
    # Parameters for the API call
    datetime = Time.at(1484719381).utc.to_datetime

    # Perform the API call through the SDK function
    result = self.class.controller.send_unix_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_rfc_1123_date_time
  def test_send_rfc_1123_date_time()
    # Parameters for the API call
    datetime = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

    # Perform the API call through the SDK function
    result = self.class.controller.send_rfc_1123_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_rfc_3339_date_time
  def test_send_rfc_3339_date_time()
    # Parameters for the API call
    datetime = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

    # Perform the API call through the SDK function
    result = self.class.controller.send_rfc_3339_date_time(datetime)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_unix_date_time_array
  def test_send_unix_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('[1484719381,1484719381]').map { |element| Time.at(element).utc.to_datetime }

    # Perform the API call through the SDK function
    result = self.class.controller.send_unix_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_rfc_1123_date_time_array
  def test_send_rfc_1123_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('["Sun, 06 Nov 1994 08:49:37 GMT","Sun, 06 Nov 1994 08:49:37 GMT"]').map { |element| DateTime.httpdate(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.send_rfc_1123_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_long
  def test_send_long()
    # Parameters for the API call
    value = 5147483647

    # Perform the API call through the SDK function
    result = self.class.controller.send_long(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
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
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
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
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_allow_dynamic_form_fields
  def test_allow_dynamic_form_fields()
    # Parameters for the API call
    name = 'farhan'

    # dictionary for optional form parameters
    optional_form_parameters = {}
    optional_form_parameters['field'] =  'QA'

    # Perform the API call through the SDK function
    result = self.class.controller.allow_dynamic_form_fields(name, optional_form_parameters)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_model
  def test_send_model()
    # Parameters for the API call
    model = Employee.from_hash(JSON.parse(
      '{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":'\
      '"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"'\
      ',"salary":20000,"department":"Software Development","joiningDay":"Saturday"'\
      ',"workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","n'\
      'ame":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"123'\
      '321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","sa'\
      'lary":20000,"department":"Software Development","joiningDay":"Saturday","wo'\
      'rkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wife'\
      '","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid"'\
      ',"age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"19'\
      '94-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 N'\
      'ov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futur'\
      'e Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futur'\
      'e Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthda'\
      'y":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun'\
      ', 06 Nov 1994 08:49:37 GMT"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.send_model(model)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_model_array
  def test_send_model_array()
    # Parameters for the API call
    models = JSON.parse(
      '[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid"'\
      ':"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z'\
      '","salary":20000,"department":"Software Development","joiningDay":"Saturday'\
      '","workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","'\
      'name":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"12'\
      '3321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","s'\
      'alary":20000,"department":"Software Development","joiningDay":"Saturday","w'\
      'orkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wif'\
      'e","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"'\
      '1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid'\
      '","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 '\
      'Nov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futu'\
      're Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birth'\
      'day":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futu'\
      're Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Su'\
      'n, 06 Nov 1994 08:49:37 GMT"},{"name":"Shahid Khaliq","age":5147483645,"add'\
      'ress":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":'\
      '"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Develo'\
      'pment","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],'\
      '"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address'\
      '":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"199'\
      '4-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Developmen'\
      't","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"dep'\
      'endents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20'\
      '","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9'\
      '571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20"'\
      ',"uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95'\
      '71247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","promotedAt":1484719381'\
      '},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, '\
      'S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:0'\
      '1:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S'\
      ' # 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01'\
      ':54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}]'
      ).map { |element| Employee.from_hash(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.send_model_array(models)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_file
  def test_send_file()
    # Parameters for the API call
    file = Faraday::UploadIO.new(TestHelper.get_file('http://localhost:3000/response/image'), 'application/octet-stream')

    # Perform the API call through the SDK function
    result = self.class.controller.send_file(file)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_multiple_files
  def test_send_multiple_files()
    # Parameters for the API call
    options = {}
    options['file'] = Faraday::UploadIO.new(TestHelper.get_file('http://localhost:3000/response/image'), 'application/octet-stream')
    options['file1'] = Faraday::UploadIO.new(TestHelper.get_file('http://localhost:3000/response/image'), 'application/octet-stream')

    # Perform the API call through the SDK function
    result = self.class.controller.send_multiple_files(options)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # Todo: Add description for test test_send_string
  def test_send_string()
    # Parameters for the API call
    value = 'TestString'

    # Perform the API call through the SDK function
    result = self.class.controller.send_string(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_multiliner_string
  def test_send_multiliner_string()
    # Parameters for the API call
    value = 'TestString
nouman'

    # Perform the API call through the SDK function
    result = self.class.controller.send_string(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_with_special_characters
  def test_send_string_with_special_characters()
    # Parameters for the API call
    value = '$%^!@#$%^&*'

    # Perform the API call through the SDK function
    result = self.class.controller.send_string(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_with_only_space
  def test_send_string_with_only_space()
    # Parameters for the API call
    value = ' '

    # Perform the API call through the SDK function
    result = self.class.controller.send_string(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_empty_string
  def test_send_empty_string()
    # Parameters for the API call
    value = ''

    # Perform the API call through the SDK function
    result = self.class.controller.send_string(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_rfc_3339_date_time_array
  def test_send_rfc_3339_date_time_array()
    # Parameters for the API call
    datetimes = JSON.parse('["1994-02-13T14:01:54.9571247Z","1994-02-13T14:01:54.9571247Z"]').map { |element| DateTime.rfc3339(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.send_rfc_3339_date_time_array(datetimes)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_mixed_array
  def test_send_mixed_array()
    # Parameters for the API call
    options = {}
    options['file'] = Faraday::UploadIO.new(TestHelper.get_file('http://localhost:3000/response/image'), 'application/octet-stream')
    options['integers'] = JSON.parse('[1,2,3,4,5]')
    options['models'] = JSON.parse(
      '[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid"'\
      ':"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z'\
      '","salary":20000,"department":"Software Development","joiningDay":"Saturday'\
      '","workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","'\
      'name":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"12'\
      '3321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","s'\
      'alary":20000,"department":"Software Development","joiningDay":"Saturday","w'\
      'orkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wif'\
      'e","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"'\
      '1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid'\
      '","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 '\
      'Nov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futu'\
      're Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birth'\
      'day":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futu'\
      're Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Su'\
      'n, 06 Nov 1994 08:49:37 GMT"},{"name":"Shahid Khaliq","age":5147483645,"add'\
      'ress":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":'\
      '"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Develo'\
      'pment","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],'\
      '"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address'\
      '":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"199'\
      '4-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Developmen'\
      't","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"dep'\
      'endents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20'\
      '","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9'\
      '571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20"'\
      ',"uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95'\
      '71247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","promotedAt":1484719381'\
      '},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, '\
      'S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:0'\
      '1:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S'\
      ' # 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01'\
      ':54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}]'
      ).map { |element| Employee.from_hash(element) }
    options['strings'] = JSON.parse('["abc","def"]')

    # Perform the API call through the SDK function
    result = self.class.controller.send_mixed_array(options)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_model_with_form
  def test_update_model_with_form()
    # Parameters for the API call
    model = Employee.from_hash(JSON.parse(
      '{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":'\
      '"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"'\
      ',"salary":20000,"department":"Software Development","joiningDay":"Saturday"'\
      ',"workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","n'\
      'ame":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"123'\
      '321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","sa'\
      'lary":20000,"department":"Software Development","joiningDay":"Saturday","wo'\
      'rkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wife'\
      '","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid"'\
      ',"age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"19'\
      '94-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 N'\
      'ov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futur'\
      'e Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futur'\
      'e Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthda'\
      'y":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun'\
      ', 06 Nov 1994 08:49:37 GMT"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.update_model_with_form(model)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_delete_form_test_with_model
  def test_delete_form_test_with_model()
    # Parameters for the API call
    model = Employee.from_hash(JSON.parse(
      '{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":'\
      '"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"'\
      ',"salary":20000,"department":"Software Development","joiningDay":"Saturday"'\
      ',"workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","n'\
      'ame":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"123'\
      '321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","sa'\
      'lary":20000,"department":"Software Development","joiningDay":"Saturday","wo'\
      'rkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wife'\
      '","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid"'\
      ',"age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"19'\
      '94-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 N'\
      'ov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futur'\
      'e Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futur'\
      'e Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthda'\
      'y":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun'\
      ', 06 Nov 1994 08:49:37 GMT"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form_1(model)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_delete_form_with_model_array
  def test_send_delete_form_with_model_array()
    # Parameters for the API call
    models = JSON.parse(
      '[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid"'\
      ':"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z'\
      '","salary":20000,"department":"Software Development","joiningDay":"Saturday'\
      '","workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","'\
      'name":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"12'\
      '3321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","s'\
      'alary":20000,"department":"Software Development","joiningDay":"Saturday","w'\
      'orkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wif'\
      'e","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"'\
      '1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid'\
      '","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 '\
      'Nov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futu'\
      're Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birth'\
      'day":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futu'\
      're Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Su'\
      'n, 06 Nov 1994 08:49:37 GMT"},{"name":"Shahid Khaliq","age":5147483645,"add'\
      'ress":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":'\
      '"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Develo'\
      'pment","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],'\
      '"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address'\
      '":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"199'\
      '4-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Developmen'\
      't","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"dep'\
      'endents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20'\
      '","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9'\
      '571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20"'\
      ',"uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95'\
      '71247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","promotedAt":1484719381'\
      '},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, '\
      'S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:0'\
      '1:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S'\
      ' # 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01'\
      ':54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}]'
      ).map { |element| Employee.from_hash(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.send_delete_form_with_model_array(models)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_model_array_with_form
  def test_update_model_array_with_form()
    # Parameters for the API call
    models = JSON.parse(
      '[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid"'\
      ':"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z'\
      '","salary":20000,"department":"Software Development","joiningDay":"Saturday'\
      '","workingDays":["Monday","Tuesday","Friday"],"boss":{"personType":"Boss","'\
      'name":"Zeeshan Ejaz","age":5147483645,"address":"H # 531, S # 20","uid":"12'\
      '3321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","s'\
      'alary":20000,"department":"Software Development","joiningDay":"Saturday","w'\
      'orkingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Future Wif'\
      'e","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"'\
      '1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid'\
      '","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"1'\
      '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 '\
      'Nov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name":"Futu'\
      're Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412","birth'\
      'day":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Futu'\
      're Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341","birthd'\
      'ay":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Su'\
      'n, 06 Nov 1994 08:49:37 GMT"},{"name":"Shahid Khaliq","age":5147483645,"add'\
      'ress":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":'\
      '"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Develo'\
      'pment","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],'\
      '"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address'\
      '":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"199'\
      '4-02-13T14:01:54.9571247Z","salary":20000,"department":"Software Developmen'\
      't","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"dep'\
      'endents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20'\
      '","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9'\
      '571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20"'\
      ',"uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95'\
      '71247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","promotedAt":1484719381'\
      '},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, '\
      'S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T14:0'\
      '1:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S'\
      ' # 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01'\
      ':54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}]'
      ).map { |element| Employee.from_hash(element) }

    # Perform the API call through the SDK function
    result = self.class.controller.update_model_array_with_form(models)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_string_with_form
  def test_update_string_with_form()
    # Parameters for the API call
    value = 'TestString'

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_with_form(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_special_string_with_form
  def test_update_special_string_with_form()
    # Parameters for the API call
    value = '$%^!@#$%^&*'

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_with_form(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_multiliner_string_with_form
  def test_update_multiliner_string_with_form()
    # Parameters for the API call
    value = 'TestString
nouman'

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_with_form(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_string_with_form_corner_case
  def test_update_string_with_form_corner_case()
    # Parameters for the API call
    value = ' '

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_with_form(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_empty_string_with_form
  def test_update_empty_string_with_form()
    # Parameters for the API call
    value = ''

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_with_form(value)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_update_string_array_with_form
  def test_update_string_array_with_form()
    # Parameters for the API call
    strings = JSON.parse('["abc","def"]')

    # Perform the API call through the SDK function
    result = self.class.controller.update_string_array_with_form(strings)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_integer_enum_array
  def test_send_integer_enum_array()
    # Parameters for the API call
    suites = JSON.parse('[1,3,4,2,3]')

    # Perform the API call through the SDK function
    result = self.class.controller.send_integer_enum_array(suites)

    # Test response code
    assert([*200..208].include? @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_enum_array
  def test_send_string_enum_array()
    # Parameters for the API call
    days = JSON.parse('["Tuesday","Saturday","Wednesday","Monday","Sunday"]')

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_enum_array(days)

    # Test response code
    assert([*200..208].include? @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_new_line_1
  def test_send_string_in_form_with_new_line_1()
    # Parameters for the API call
    body = TestNstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_new_line(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_new_line_2
  def test_send_string_in_form_with_new_line_2()
    # Parameters for the API call
    body = TestNstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA&Dev"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_new_line(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_new_line_3
  def test_send_string_in_form_with_new_line_3()
    # Parameters for the API call
    body = TestNstringEncoding.from_hash(JSON.parse('{"name":"farhan&nouman","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_new_line(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_1
  def test_send_string_in_form_with_r_1()
    # Parameters for the API call
    body = TestRstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_2
  def test_send_string_in_form_with_r_2()
    # Parameters for the API call
    body = TestRstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA&Dev"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_3
  def test_send_string_in_form_with_r_3()
    # Parameters for the API call
    body = TestRstringEncoding.from_hash(JSON.parse('{"name":"farhan&nouman","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_n_1
  def test_send_string_in_form_with_r_n_1()
    # Parameters for the API call
    body = TestRNstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r_n(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_n_2
  def test_send_string_in_form_with_r_n_2()
    # Parameters for the API call
    body = TestRNstringEncoding.from_hash(JSON.parse('{"name":"farhan","field":"QA&Dev"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r_n(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_send_string_in_form_with_r_n_3
  def test_send_string_in_form_with_r_n_3()
    # Parameters for the API call
    body = TestRNstringEncoding.from_hash(JSON.parse('{"name":"farhan&nouman","field":"QA"}'))

    # Perform the API call through the SDK function
    result = self.class.controller.send_string_in_form_with_r_n(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
