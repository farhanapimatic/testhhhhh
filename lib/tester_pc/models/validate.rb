# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # Validate Model.
  class Validate < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :field

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['field'] = 'field'
      @_hash['name'] = 'name'
      @_hash['address'] = 'address'
      @_hash
    end

    def initialize(field = nil,
                   name = nil,
                   address = nil,
                   additional_properties = {})
      @field = field
      @name = name
      @address = address

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      field = hash['field']
      name = hash['name']
      address = hash['address']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Validate.new(field,
                   name,
                   address,
                   hash)
    end
  end
end
