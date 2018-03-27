# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # NestedModelException class.
  class NestedModelException < APIException
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_message

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :server_code

    # TODO: Write general description for this method
    # @return [Validate]
    attr_accessor :model

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
      @model = Validate.from_hash(hash['model']) if hash['model']
    end
  end
end
