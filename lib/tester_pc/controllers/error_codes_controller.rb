# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # ErrorCodesController
  class ErrorCodesController < BaseController
    @instance = ErrorCodesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_501
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/error/501'
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
      if _context.response.status_code == 501
        raise NestedModelException.new(
          'error 501',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_400
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/error/400'
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
    def get_500
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/error/500'
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
    def get_401
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/error/401'
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
      if _context.response.status_code == 401
        raise LocalTestException.new(
          '401 Local',
          _context
        )
      elsif _context.response.status_code == 421
        raise LocalTestException.new(
          'Default',
          _context
        )
      elsif _context.response.status_code == 431
        raise LocalTestException.new(
          'Default',
          _context
        )
      elsif _context.response.status_code == 432
        raise LocalTestException.new(
          'Default',
          _context
        )
      elsif _context.response.status_code == 441
        raise LocalTestException.new(
          'Default',
          _context
        )
      end
      unless _context.response.status_code.between?(200, 208)
        raise LocalTestException.new(
          'Invalid response.',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end
  end
end
