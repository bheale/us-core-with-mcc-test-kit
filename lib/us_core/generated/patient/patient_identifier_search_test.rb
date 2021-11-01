require_relative '../../search_test'
require_relative '../../generator/group_metadata'

module USCore
  class PatientIdentifierSearchTest < Inferno::Test
    include USCore::SearchTest

    title 'Server returns valid results for Patient search by identifier'
    description %(
      A server SHALL support searching by identifier on the Patient resource. This
      test will pass if resources are returned and match the search criteria. If
      none are returned, the test is skipped'
    %)

    id :patient_identifier_search_test

    def resource_type
      'Patient'
    end

    def self.metadata
      @metadata ||= Generator::GroupMetadata.new(YAML.load_file(File.join(__dir__, 'metadata.yml')))
    end

    def scratch_resources
      scratch[:patient_resources] ||= []
    end

    def search_params
      {
        'identifier': search_param_value('identifier')
      }
    end

    run do
      perform_search_test
    end
  end
end
