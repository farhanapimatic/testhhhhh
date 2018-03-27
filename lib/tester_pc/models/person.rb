# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module TesterPc
  # Person Model.
  class Person < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :age

    # TODO: Write general description for this method
    # @return [Date]
    attr_accessor :birthday

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :birthtime

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :person_type

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Empl'] = Employee.method(:from_hash)
        @_discriminators['Boss'] = Boss.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address'] = 'address'
      @_hash['age'] = 'age'
      @_hash['birthday'] = 'birthday'
      @_hash['birthtime'] = 'birthtime'
      @_hash['name'] = 'name'
      @_hash['uid'] = 'uid'
      @_hash['person_type'] = 'personType'
      @_hash
    end

    def initialize(address = nil,
                   age = nil,
                   birthday = nil,
                   birthtime = nil,
                   name = nil,
                   uid = nil,
                   person_type = nil,
                   additional_properties = {})
      @address = address
      @age = age
      @birthday = birthday
      @birthtime = birthtime
      @name = name
      @uid = uid
      @person_type = person_type

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['personType']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
      address = hash['address']
      age = hash['age']
      birthday = hash['birthday']
      birthtime = DateTime.rfc3339(hash['birthtime']) if hash['birthtime']
      name = hash['name']
      uid = hash['uid']
      person_type = hash['personType']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Person.new(address,
                 age,
                 birthday,
                 birthtime,
                 name,
                 uid,
                 person_type,
                 hash)
    end
  end
end
