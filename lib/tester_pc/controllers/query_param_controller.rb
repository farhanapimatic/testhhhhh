# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # QueryParamController
  class QueryParamController < BaseController
    @instance = QueryParamController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [List of Date] dates Required parameter: Example:
    # @return ServerResponse response from the API call
    def date_array(dates)
      # Validate required parameters.
      validate_parameters(
        'dates' => dates
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/datearray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'dates' => dates
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ServerResponse.from_hash(decoded)
    end

    # get optional dynamic query parameter
    # @param [String] name Required parameter: Example:
    # @param [Hash] _query_parameters Additional optional query parameters are
    # supported by this endpoint.
    # @return ServerResponse response from the API call
    def optional_dynamic_query_param(name,
                                     _query_parameters = nil)
      # Validate required parameters.
      validate_parameters(
        'name' => name
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/optionalQueryParam'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'name' => name
        },
        array_serialization: Configuration.array_serialization
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        _query_parameters,
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def date(date)
      # Validate required parameters.
      validate_parameters(
        'date' => date
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/date'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'date' => date
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def unix_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/unixdatetimearray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetimes' => datetimes.map { |element| element.to_time.utc.to_i }
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def unix_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/unixdatetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetime' => datetime.to_time.utc.to_i
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def rfc_1123_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/rfc1123datetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetime' => datetime.httpdate
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def rfc_1123_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/rfc1123datetimearray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetimes' => datetimes.map(&:httpdate)
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def rfc_3339_date_time_array(datetimes)
      # Validate required parameters.
      validate_parameters(
        'datetimes' => datetimes
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/rfc3339datetimearray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetimes' => datetimes
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def rfc_3339_date_time(datetime)
      # Validate required parameters.
      validate_parameters(
        'datetime' => datetime
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/rfc3339datetime'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'datetime' => datetime
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    # @return ServerResponse response from the API call
    def no_params
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/noparams'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    # @param [String] string Required parameter: Example:
    # @return ServerResponse response from the API call
    def string_param(string)
      # Validate required parameters.
      validate_parameters(
        'string' => string
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/stringparam'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'string' => string
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    # @param [String] url Required parameter: Example:
    # @return ServerResponse response from the API call
    def url_param(url)
      # Validate required parameters.
      validate_parameters(
        'url' => url
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/urlparam'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'url' => url
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def number_array(integers)
      # Validate required parameters.
      validate_parameters(
        'integers' => integers
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/numberarray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'integers' => integers
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def string_array(strings)
      # Validate required parameters.
      validate_parameters(
        'strings' => strings
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/stringarray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'strings' => strings
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    # @param [Boolean] boolean Required parameter: Example:
    # @param [Integer] number Required parameter: Example:
    # @param [String] string Required parameter: Example:
    # @param [Hash] _query_parameters Additional optional query parameters are
    # supported by this endpoint.
    # @return ServerResponse response from the API call
    def simple_query(options = {},
                     _query_parameters = nil)
      # Validate required parameters.
      validate_parameters(
        'boolean' => options['boolean'],
        'number' => options['number'],
        'string' => options['string']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'boolean' => options['boolean'],
          'number' => options['number'],
          'string' => options['string']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        _query_parameters,
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def string_enum_array(days)
      # Validate required parameters.
      validate_parameters(
        'days' => days
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/stringenumarray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'days' => days
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    # @param [Integer] number Required parameter: Example:
    # @param [Float] precision Required parameter: Example:
    # @param [String] string Required parameter: Example:
    # @param [String] url Required parameter: Example:
    # @return ServerResponse response from the API call
    def multiple_params(options = {})
      # Validate required parameters.
      validate_parameters(
        'number' => options['number'],
        'precision' => options['precision'],
        'string' => options['string'],
        'url' => options['url']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/multipleparams'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'number' => options['number'],
          'precision' => options['precision'],
          'string' => options['string'],
          'url' => options['url']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
    def integer_enum_array(suites)
      # Validate required parameters.
      validate_parameters(
        'suites' => suites
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/query/integerenumarray'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'suites' => suites
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
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
