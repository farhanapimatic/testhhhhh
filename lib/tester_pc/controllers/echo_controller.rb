# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # EchoController
  class EchoController < BaseController
    @instance = EchoController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Echo's back the request
    # @param [Object] input Required parameter: Example:
    # @return Mixed response from the API call
    def json_echo(input)
      # Validate required parameters.
      validate_parameters(
        'input' => input
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/'
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
        parameters: input.to_json
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

    # Sends the request including any form params as JSON
    # @param [Object] input Required parameter: Example:
    # @return Mixed response from the API call
    def form_echo(input)
      # Validate required parameters.
      validate_parameters(
        'input' => input
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'input' => input
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
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end

    # TODO: type endpoint description here
    # @param [Hash] _query_parameters Additional optional query parameters are
    # supported by this endpoint.
    # @return EchoResponse response from the API call
    def query_echo(_query_parameters = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/'
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
      EchoResponse.from_hash(decoded)
    end
  end
end
