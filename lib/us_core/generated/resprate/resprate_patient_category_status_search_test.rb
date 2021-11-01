require_relative '../../search_test'
require_relative '../../generator/group_metadata'

module USCore
  class RespratePatientCategoryStatusSearchTest < Inferno::Test
    include USCore::SearchTest

    title 'Server returns valid results for Observation search by patient + category + status'
    description %(
      A server SHOULD support searching by patient + category + status on the Observation resource. This
      test will pass if resources are returned and match the search criteria. If
      none are returned, the test is skipped'
    %)

    id :resprate_patient_category_status_search_test

    input :patient_id, default: '85'

    def resource_type
      'Observation'
    end

    def self.metadata
      @metadata ||= Generator::GroupMetadata.new(YAML.load_file(File.join(__dir__, 'metadata.yml')))
    end

    def scratch_resources
      scratch[:resprate_resources] ||= []
    end

    def search_params
      {
        'patient': patient_id,
        'category': search_param_value('category'),
        'status': search_param_value('status')
      }
    end

    run do
      perform_search_test
    end
  end
end
