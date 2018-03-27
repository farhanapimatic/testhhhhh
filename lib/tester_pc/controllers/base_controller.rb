# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # Base controller.
  class BaseController
    attr_accessor :http_client, :http_call_back

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client || FaradayClient.new
      @http_call_back = http_call_back

      @global_headers = {
        'user-agent' => 'Stamplay SDK'
      }
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError, "Required parameter #{_name} cannot be nil."
        end
      end
    end

    def execute_request(request, binary: false)
      @http_call_back.on_before_request(request) if @http_call_back

      APIHelper.clean_hash(request.headers)
      request.headers = @global_headers.clone.merge(request.headers)

      response = if binary
                   @http_client.execute_as_binary(request)
                 else
                   @http_client.execute_as_string(request)
                 end
      context = HttpContext.new(request, response)

      @http_call_back.on_after_response(context) if @http_call_back

      context
    end

    def validate_response(context)
      raise GlobalTestException.new '400 Global', context if
      context.response.status_code == 400
      raise GlobalTestException.new '402 Global', context if
      context.response.status_code == 402
      raise GlobalTestException.new '403 Global', context if
      context.response.status_code == 403
      raise GlobalTestException.new '404 Global', context if
      context.response.status_code == 404
      raise GlobalTestException.new '500 Global', context if
      context.response.status_code == 500
      raise GlobalTestException.new 'Invalid response.', context unless
        context.response.status_code.between?(200, 208) # [200,208] = HTTP OK
    end
  end
end
