# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # Raw http Request info
  class EchoResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Array<String, Object>]
    attr_accessor :body

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :headers

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :method

    # relativePath
    # @return [String]
    attr_accessor :path

    # relativePath
    # @return [Array<String, QueryParameter>]
    attr_accessor :query

    # relativePath
    # @return [Integer]
    attr_accessor :upload_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['body'] = 'body'
      @_hash['headers'] = 'headers'
      @_hash['method'] = 'method'
      @_hash['path'] = 'path'
      @_hash['query'] = 'query'
      @_hash['upload_count'] = 'uploadCount'
      @_hash
    end

    def initialize(body = nil,
                   headers = nil,
                   method = nil,
                   path = nil,
                   query = nil,
                   upload_count = nil,
                   additional_properties = {})
      @body = body
      @headers = headers
      @method = method
      @path = path
      @query = query
      @upload_count = upload_count

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      body = hash['body']
      headers = hash['headers']
      method = hash['method']
      path = hash['path']
      query = QueryParameter.from_hash(hash['query']) if hash['query']
      upload_count = hash['uploadCount']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      EchoResponse.new(body,
                       headers,
                       method,
                       path,
                       query,
                       upload_count,
                       hash)
    end
  end
end
