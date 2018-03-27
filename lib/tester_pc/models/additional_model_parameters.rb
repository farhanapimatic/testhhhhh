# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # AdditionalModelParameters Model.
  class AdditionalModelParameters < BaseModel
    # TODO: Write general description for this method
    # @return [Job]
    attr_accessor :job

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :field

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['job'] = 'Job'
      @_hash['address'] = 'address'
      @_hash['field'] = 'field'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(job = nil,
                   address = nil,
                   field = nil,
                   name = nil,
                   additional_properties = {})
      @job = job
      @address = address
      @field = field
      @name = name

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      job = Job.from_hash(hash['Job']) if hash['Job']
      address = hash['address']
      field = hash['field']
      name = hash['name']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AdditionalModelParameters.new(job,
                                    address,
                                    field,
                                    name,
                                    hash)
    end
  end
end
