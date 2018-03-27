# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'global_test_exception'

module TesterPc
  # To test specific local exceptions.
  class LocalTestException < GlobalTestException
    # Represents the specific endpoint info
    # @return [String]
    attr_accessor :secret_message_for_endpoint

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      super(hash)
      @secret_message_for_endpoint = hash['SecretMessageForEndpoint']
    end
  end
end
