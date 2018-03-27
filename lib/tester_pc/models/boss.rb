# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'employee'

module TesterPc
  # Testing circular reference.
  class Boss < Employee
    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :promoted_at

    # TODO: Write general description for this method
    # @return [Employee]
    attr_accessor :assistant

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['promoted_at'] = 'promotedAt'
      @_hash['assistant'] = 'assistant'
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
                   promoted_at = nil,
                   salary = nil,
                   uid = nil,
                   working_days = nil,
                   assistant = nil,
                   boss = nil,
                   person_type = nil,
                   additional_properties = {})
      @promoted_at = promoted_at
      @assistant = assistant
      def promoted_at.to_s
        to_time.utc.to_i.to_s
      end

      def promoted_at.to_json(_options = {})
        to_time.utc.to_i.to_json
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
            department,
            dependents,
            hired_at,
            joining_day,
            name,
            salary,
            uid,
            working_days,
            boss,
            person_type)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

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
      promoted_at = Time.at(hash['promotedAt']).utc.to_datetime if
        hash['promotedAt']
      salary = hash['salary']
      uid = hash['uid']
      working_days = hash['workingDays']
      assistant = Employee.from_hash(hash['assistant']) if hash['assistant']
      boss = Person.from_hash(hash['boss']) if hash['boss']
      person_type = hash['personType']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Boss.new(address,
               age,
               birthday,
               birthtime,
               department,
               dependents,
               hired_at,
               joining_day,
               name,
               promoted_at,
               salary,
               uid,
               working_days,
               assistant,
               boss,
               person_type,
               hash)
    end
  end
end
