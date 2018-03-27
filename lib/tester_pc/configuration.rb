# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).

module TesterPc
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      ENVIRONMENT = [PRODUCTION = 0, TESTING = 1].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0, AUTH_SERVER = 1].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::PRODUCTION

    # TODO: Set an appropriate value.
    @port = '80'

    # TODO: Set an appropriate value.
    @suites = SuiteCode::HEARTS

    # All the environments the SDK can run in.
    @environments = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'http://apimatic.hopto.org:{suites}',
        Server::AUTH_SERVER => 'http://apimaticauth.hopto.org:3000'
      },
      Environment::TESTING => {
        Server::DEFAULT => 'http://localhost:3000',
        Server::AUTH_SERVER => 'http://apimaticauth.xhopto.org:3000'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      parameters = {
        'port' => port,
        'suites' => suites
      }
      APIHelper.append_url_with_template_parameters(
        environments[environment][server], parameters
      )
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :port
      attr_accessor :suites
    end
  end
end
