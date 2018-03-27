# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # Job Model.
  class Job < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :company

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['company'] = 'company'
      @_hash
    end

    def initialize(company = nil,
                   additional_properties = {})
      @company = company

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      company = hash['company']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Job.new(company,
              hash)
    end
  end
end
