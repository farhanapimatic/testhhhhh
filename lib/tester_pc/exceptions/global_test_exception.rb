# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # To test specific global exceptions.
  class GlobalTestException < APIException
    # Represents the server's exception message
    # @return [String]
    attr_accessor :server_message

    # Represents the server's error code
    # @return [Integer]
    attr_accessor :server_code

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
      @server_message = hash['ServerMessage']
      @server_code = hash['ServerCode']
    end
  end
end
