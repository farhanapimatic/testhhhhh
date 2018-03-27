# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # BodyParamsController
  class BodyParamsController < BaseController
    @instance = BodyParamsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [String] text_string Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_plain_text(text_string)
      # Validate required parameters.
      validate_parameters(
        'text_string' => text_string
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/deletePlainTextBody'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: text_string
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
    # @param [DeleteBody] body Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_delete_body(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/deleteBody'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: body.to_json
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
      _query_builder << '/body/date'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: dates.to_json
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
      _query_builder << '/body/date'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: date.to_s
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
      _query_builder << '/body/unixdatetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetime.to_time.utc.to_i.to_s
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
      _query_builder << '/body/rfc1123datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetime.httpdate
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
      _query_builder << '/body/rfc3339datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetime.rfc3339
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
      _query_builder << '/body/unixdatetime'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetimes.map { |element| element.to_time.utc.to_i }.to_json
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
      _query_builder << '/body/rfc1123datetime'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetimes.map(&:httpdate).to_json
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
      _query_builder << '/body/rfc3339datetime'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: datetimes.map(&:rfc3339).to_json
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # sends a string body param
    # @param [List of String] sarray Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_string_array(sarray)
      # Validate required parameters.
      validate_parameters(
        'sarray' => sarray
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/string'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: sarray.to_json
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
    def update_string(value)
      # Validate required parameters.
      validate_parameters(
        'value' => value
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/updateString'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: value
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
      _query_builder << '/body/number'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: integers.to_json
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
    # @param [String] field Required parameter: Example:
    # @param [String] name Required parameter: Example:
    # @return ServerResponse response from the API call
    def wrap_body_in_object(options = {})
      # Validate required parameters.
      validate_parameters(
        'field' => options['field'],
        'name' => options['name']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/wrapParamInObject'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare wrapper object for body parameters.
      _body_parameters = {
        'field' => options['field'],
        'name' => options['name']
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _body_parameters.to_json
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
    # @param [AdditionalModelParameters] model Required parameter: Example:
    # @return ServerResponse response from the API call
    def additional_model_parameters(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/additionalModelProperties'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: model.to_json
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
    # @param [Validate] model Required parameter: Example:
    # @param [String] option Optional parameter: Example:
    # @return ServerResponse response from the API call
    def validate_required_parameter(options = {})
      # Validate required parameters.
      validate_parameters(
        'model' => options['model']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/validateRequiredParam'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'option' => options['option']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: options['model'].to_json
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
    # @param [AdditionalModelParameters] model Required parameter: Example:
    # @return ServerResponse response from the API call
    def additional_model_parameters_1(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/additionalModelProperties'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: model.to_json
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
      _query_builder << '/body/model'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: model.to_json
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
      _query_builder << '/body/model'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: models.to_json
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
    # @param [Object] dynamic Required parameter: Example:
    # @return ServerResponse response from the API call
    def send_dynamic(dynamic)
      # Validate required parameters.
      validate_parameters(
        'dynamic' => dynamic
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/dynamic'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: dynamic.to_json
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
      _query_builder << '/body/string'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: value
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
      _query_builder << '/body/stringenum'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: days.to_json
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
      _query_builder << '/body/integerenum'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: suites.to_json
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
    def update_model(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/updateModel'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: model.to_json
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
    def send_delete_body_with_model(model)
      # Validate required parameters.
      validate_parameters(
        'model' => model
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/deleteBody1'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: model.to_json
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
    def send_delete_body_with_model_array(models)
      # Validate required parameters.
      validate_parameters(
        'models' => models
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/deleteBody1'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: models.to_json
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
    def update_model_array(models)
      # Validate required parameters.
      validate_parameters(
        'models' => models
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/updateModel'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: models.to_json
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
    def update_string_1(value)
      # Validate required parameters.
      validate_parameters(
        'value' => value
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/updateString'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: value
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
    def update_string_array(strings)
      # Validate required parameters.
      validate_parameters(
        'strings' => strings
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/updateString'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: strings.to_json
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
    def send_string_with_new_line(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
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
    def send_string_with_r(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
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
    def send_string_in_body_with_r_n(body)
      # Validate required parameters.
      validate_parameters(
        'body' => body
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/body/stringEncoding'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
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
