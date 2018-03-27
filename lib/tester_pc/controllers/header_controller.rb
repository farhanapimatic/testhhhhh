# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # HeaderController
  class HeaderController < BaseController
    @instance = HeaderController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Sends a single header params
    # @param [String] custom_header Required parameter: Example:
    # @param [String] value Required parameter: Represents the value of the
    # custom header
    # @return ServerResponse response from the API call
    def send_headers(options = {})
      # Validate required parameters.
      validate_parameters(
        'custom_header' => options['custom_header'],
        'value' => options['value']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/header'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'custom-header' => options['custom_header']
      }

      # Prepare form parameters.
      _parameters = {
        'value' => options['value']
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
