# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'

module TesterPc
  # ResponseTypesController
  class ResponseTypesController < BaseController
    @instance = ResponseTypesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @return List of Date response from the API call
    def get_date_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/date'
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
      decoded.map { |element| Date.iso8601(element) }
    end

    # TODO: type endpoint description here
    # @return Date response from the API call
    def get_date
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/date'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      Date.iso8601(_context.response.raw_body)
    end

    # TODO: type endpoint description here
    # @return Long response from the API call
    def get_long
      # Prepare query url.
      _query_builder = Configuration.get_base_uri(
        Configuration::Server::DEFAULT
      )
      _query_builder << '/response/long'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body.to_i
    end

    # TODO: type endpoint description here
    # @return Person response from the API call
    def get_model
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/model'
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
      Person.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @return List of Days response from the API call
    def get_string_enum_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/enum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true,
          'type' => 'string'
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
      decoded
    end

    # TODO: type endpoint description here
    # @return Days response from the API call
    def get_string_enum
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/enum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'type' => 'string'
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # TODO: type endpoint description here
    # @return List of Person response from the API call
    def get_model_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/model'
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
      decoded.map { |element| Person.from_hash(element) }
    end

    # TODO: type endpoint description here
    # @return SuiteCode response from the API call
    def get_int_enum
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/enum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'type' => 'int'
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body.to_i
    end

    # TODO: type endpoint description here
    # @return List of SuiteCode response from the API call
    def get_int_enum_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/enum'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'array' => true,
          'type' => 'int'
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
      decoded
    end

    # TODO: type endpoint description here
    # @return Float response from the API call
    def get_precision
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/precision'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body.to_f
    end

    # gets a binary object
    # @return Binary response from the API call
    def get_binary
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/binary'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request, binary: true)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Gets a integer response
    # @return Integer response from the API call
    def get_integer
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/integer'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body.to_i
    end

    # Get an array of integers.
    # @return List of Integer response from the API call
    def get_integer_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/integer'
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
      decoded
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_dynamic
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/dynamic'
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
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_dynamic_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/dynamic'
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
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end

    # TODO: type endpoint description here
    # @return DateTime response from the API call
    def get_3339_datetime
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/3339datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      DateTime.rfc3339(_context.response.raw_body)
    end

    # TODO: type endpoint description here
    # @return List of DateTime response from the API call
    def get_3339_datetime_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/3339datetime'
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
      decoded.map { |element| DateTime.rfc3339(element) }
    end

    # TODO: type endpoint description here
    # @return Boolean response from the API call
    def get_boolean
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/boolean'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body.to_bool
    end

    # TODO: type endpoint description here
    # @return List of Boolean response from the API call
    def get_boolean_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/boolean'
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
      decoded
    end

    # TODO: type endpoint description here
    # @return void response from the API call
    def get_headers
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/headers'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)
      validate_response(_context)
    end

    # TODO: type endpoint description here
    # @return DateTime response from the API call
    def get_1123_date_time
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/1123datetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      DateTime.httpdate(_context.response.raw_body)
    end

    # TODO: type endpoint description here
    # @return DateTime response from the API call
    def get_unix_date_time
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/unixdatetime'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      Time.at(_context.response.raw_body.to_i).utc.to_datetime
    end

    # TODO: type endpoint description here
    # @return List of DateTime response from the API call
    def get_1123_date_time_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/1123datetime'
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
      decoded.map { |element| DateTime.httpdate(element) }
    end

    # TODO: type endpoint description here
    # @return List of DateTime response from the API call
    def get_unix_date_time_array
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/response/unixdatetime'
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
      decoded.map { |element| Time.at(element).utc.to_datetime }
    end
  end
end
