# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # ServerResponse Model.
  class ServerResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :passed

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [Array<String, Object>]
    attr_accessor :input

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['passed'] = 'passed'
      @_hash['message'] = 'Message'
      @_hash['input'] = 'input'
      @_hash
    end

    def initialize(passed = nil,
                   message = nil,
                   input = nil,
                   additional_properties = {})
      @passed = passed
      @message = message
      @input = input

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      passed = hash['passed']
      message = hash['Message']
      input = hash['input']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ServerResponse.new(passed,
                         message,
                         input,
                         hash)
    end
  end
end
