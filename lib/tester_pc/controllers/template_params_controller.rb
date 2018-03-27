# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # TemplateParamsController
  class TemplateParamsController < BaseController
    @instance = TemplateParamsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [List of String] strings Required parameter: Example:
    # @return EchoResponse response from the API call
    def send_string_array(strings)
      # Validate required parameters.
      validate_parameters(
        'strings' => strings
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/{strings}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'strings' => strings
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

    # TODO: type endpoint description here
    # @param [List of Integer] integers Required parameter: Example:
    # @return EchoResponse response from the API call
    def send_integer_array(integers)
      # Validate required parameters.
      validate_parameters(
        'integers' => integers
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/{integers}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'integers' => integers
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
