# This file was automatically generated for Stamplay by APIMATIC v2.0
# ( https://apimatic.io ).
require 'date'
require 'json'
require 'faraday'
require 'certifi'
require 'logging'

require_relative 'tester_pc/api_helper.rb'
require_relative 'tester_pc/tester_pc_client.rb'

# Http
require_relative 'tester_pc/http/http_call_back.rb'
require_relative 'tester_pc/http/http_client.rb'
require_relative 'tester_pc/http/http_method_enum.rb'
require_relative 'tester_pc/http/http_request.rb'
require_relative 'tester_pc/http/http_response.rb'
require_relative 'tester_pc/http/http_context.rb'
require_relative 'tester_pc/http/faraday_client.rb'

# Models
require_relative 'tester_pc/models/base_model.rb'
require_relative 'tester_pc/models/employee.rb'
require_relative 'tester_pc/models/boss.rb'
require_relative 'tester_pc/models/delete_body.rb'
require_relative 'tester_pc/models/echo_response.rb'
require_relative 'tester_pc/models/person.rb'
require_relative 'tester_pc/models/server_response.rb'
require_relative 'tester_pc/models/query_parameter.rb'
require_relative 'tester_pc/models/job.rb'
require_relative 'tester_pc/models/additional_model_parameters.rb'
require_relative 'tester_pc/models/validate.rb'
require_relative 'tester_pc/models/test_nstring_encoding.rb'
require_relative 'tester_pc/models/test_rstring_encoding.rb'
require_relative 'tester_pc/models/test_r_nstring_encoding.rb'
require_relative 'tester_pc/models/days.rb'
require_relative 'tester_pc/models/suite_code.rb'

# Exceptions
require_relative 'tester_pc/exceptions/api_exception.rb'
require_relative 'tester_pc/exceptions/local_test_exception.rb'
require_relative 'tester_pc/exceptions/global_test_exception.rb'
require_relative 'tester_pc/exceptions/nested_model_exception.rb'

require_relative 'tester_pc/configuration.rb'

# Controllers
require_relative 'tester_pc/controllers/base_controller.rb'
require_relative 'tester_pc/controllers/response_types_controller.rb'
require_relative 'tester_pc/controllers/form_params_controller.rb'
require_relative 'tester_pc/controllers/body_params_controller.rb'
require_relative 'tester_pc/controllers/query_param_controller.rb'
require_relative 'tester_pc/controllers/error_codes_controller.rb'
require_relative 'tester_pc/controllers/echo_controller.rb'
require_relative 'tester_pc/controllers/header_controller.rb'
require_relative 'tester_pc/controllers/template_params_controller.rb'
