# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'person'

module TesterPc
  # Employee Model.
  class Employee < Person
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :department

    # TODO: Write general description for this method
    # @return [List of Person]
    attr_accessor :dependents

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :hired_at

    # TODO: Write general description for this method
    # @return [Days]
    attr_accessor :joining_day

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :salary

    # TODO: Write general description for this method
    # @return [List of Days]
    attr_accessor :working_days

    # TODO: Write general description for this method
    # @return [Person]
    attr_accessor :boss

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Boss'] = Boss.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['department'] = 'department'
      @_hash['dependents'] = 'dependents'
      @_hash['hired_at'] = 'hiredAt'
      @_hash['joining_day'] = 'joiningDay'
      @_hash['salary'] = 'salary'
      @_hash['working_days'] = 'workingDays'
      @_hash['boss'] = 'boss'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(address = nil,
                   age = nil,
                   birthday = nil,
                   birthtime = nil,
                   department = nil,
                   dependents = nil,
                   hired_at = nil,
                   joining_day = Days::MONDAY,
                   name = nil,
                   salary = nil,
                   uid = nil,
                   working_days = nil,
                   boss = nil,
                   person_type = nil,
                   additional_properties = {})
      @department = department
      @dependents = dependents
      @hired_at = hired_at
      @joining_day = joining_day
      @salary = salary
      @working_days = working_days
      @boss = boss
      def hired_at.to_s
        httpdate
      end

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end

      # Call the constructor of the base class
      super(address,
            age,
            birthday,
            birthtime,
            name,
            uid,
            person_type)
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
      department = hash['department']
      # Parameter is an array, so we need to iterate through it
      dependents = nil
      unless hash['dependents'].nil?
        dependents = []
        hash['dependents'].each do |structure|
          dependents << (Person.from_hash(structure) if structure)
        end
      end
      hired_at = DateTime.httpdate(hash['hiredAt']) if hash['hiredAt']
      joining_day = hash['joiningDay'] ||= Days::MONDAY
      name = hash['name']
      salary = hash['salary']
      uid = hash['uid']
      working_days = hash['workingDays']
      boss = Person.from_hash(hash['boss']) if hash['boss']
      person_type = hash['personType']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Employee.new(address,
                   age,
                   birthday,
                   birthtime,
                   department,
                   dependents,
                   hired_at,
                   joining_day,
                   name,
                   salary,
                   uid,
                   working_days,
                   boss,
                   person_type,
                   hash)
    end
  end
end
