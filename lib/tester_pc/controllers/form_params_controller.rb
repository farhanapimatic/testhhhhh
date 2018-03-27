# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # FormParamsController
  class FormParamsController < BaseController
    @instance = FormParamsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [DeleteBody] body Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_form(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/deleteForm'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'body' => body
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [File] file Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_multipart(file)
      # Validate required parameters.
      validate_parameters(
        'file' => file
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/deleteMultipart'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'file' => file
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Date] dates Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_date_array(dates)
      # Validate required parameters.
      validate_parameters(
        'dates' => dates
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/date'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'dates' => dates
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Date] date Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_date(date)
      # Validate required parameters.
      validate_parameters(
        'date' => date
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/date'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'date' => date
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [DateTime] datetime Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_unix_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/unixdatetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetime' => datetime.to_time.utc.to_i
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [DateTime] datetime Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_rfc_1123_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/rfc1123datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetime' => datetime.httpdate
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [DateTime] datetime Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_rfc_3339_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/rfc3339datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetime' => datetime
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of DateTime] datetimes Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_unix_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/unixdatetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetimes' => datetimes.map { |element| element.to_time.utc.to_i }
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of DateTime] datetimes Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_rfc_1123_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/rfc1123datetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetimes' => datetimes.map(&:httpdate)
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Long] value Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_long(value)
      # Validate required parameters.
      validate_parameters(
        'value' => value
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/number'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'value' => value
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Integer] integers Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_integer_array(integers)
      # Validate required parameters.
      validate_parameters(
        'integers' => integers
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/number'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'integers' => integers
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of String] strings Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_array(strings)
      # Validate required parameters.
      validate_parameters(
        'strings' => strings
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/string'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'strings' => strings
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] name Required parameter: Example:
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return ServerResponse response from the API call
    def allow_dynamic_form_fields(name,
                                  _field_parameters = nil)
      # Validate required parameters.
      validate_parameters(
        'name' => name
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/allowDynamicFormFields'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'name' => name
      }
      if !_parameters.nil? && !_field_parameters.nil?
        _parameters.merge!(_field_parameters)
      end
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Employee] model Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_model(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/model'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'model' => model
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Employee] models Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_model_array(models)
      # Validate required parameters.
      validate_parameters(
        'models' => models
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/model'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'models' => models
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [File] file Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_file(file)
      # Validate required parameters.
      validate_parameters(
        'file' => file
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/file'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'file' => file
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [File] file Required parameter: Example:
    # @param [File] file_1 Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_multiple_files(options = {})
      # Validate required parameters.
      validate_parameters(
        'file' => options['file'],
        'file1' => options['file1']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/multipleFiles'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'file' => options['file'],
        'file1' => options['file1']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] value Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string(value)
      # Validate required parameters.
      validate_parameters(
        'value' => value
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/string'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'value' => value
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of DateTime] datetimes Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_rfc_3339_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/rfc3339datetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'datetimes' => datetimes
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # Send a variety for form params. Returns file count and body params
    # @param [File] file Required parameter: Example:
    # @param [List of Integer] integers Required parameter: Example:
    # @param [List of Employee] models Required parameter: Example:
    # @param [List of String] strings Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_mixed_array(options = {})
      # Validate required parameters.
      validate_parameters(
        'file' => options['file'],
        'integers' => options['integers'],
        'models' => options['models'],
        'strings' => options['strings']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/mixed'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'file' => options['file'],
        'integers' => options['integers'],
        'models' => options['models'],
        'strings' => options['strings']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Employee] model Required parameter: Example:
    # @return ServerResponse response from the API call
    def update_model_with_form(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/updateModel'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'model' => model
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Employee] model Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_form_1(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/deleteForm1'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'model' => model
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Employee] models Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_form_with_model_array(models)
      # Validate required parameters.
      validate_parameters(
        'models' => models
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/deleteForm1'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'models' => models
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Employee] models Required parameter: Example:
    # @return ServerResponse response from the API call
    def update_model_array_with_form(models)
      # Validate required parameters.
      validate_parameters(
        'models' => models
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/updateModel'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'models' => models
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] value Required parameter: Example:
    # @return ServerResponse response from the API call
    def update_string_with_form(value)
      # Validate required parameters.
      validate_parameters(
        'value' => value
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/updateString'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'value' => value
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of String] strings Required parameter: Example:
    # @return ServerResponse response from the API call
    def update_string_array_with_form(strings)
      # Validate required parameters.
      validate_parameters(
        'strings' => strings
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/updateString'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'strings' => strings
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of SuiteCode] suites Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_integer_enum_array(suites)
      # Validate required parameters.
      validate_parameters(
        'suites' => suites
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/integerenum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'suites' => suites
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Days] days Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_enum_array(days)
      # Validate required parameters.
      validate_parameters(
        'days' => days
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/stringenum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'days' => days
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [TestNstringEncoding] body Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_in_form_with_new_line(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'body' => body
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [TestRstringEncoding] body Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_in_form_with_r(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'body' => body
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [TestRNstringEncoding] body Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_in_form_with_r_n(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/form/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'body' => body
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end
  end
end
