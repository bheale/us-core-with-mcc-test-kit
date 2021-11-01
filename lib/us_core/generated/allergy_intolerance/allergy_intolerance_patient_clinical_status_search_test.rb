require_relative '../../search_test'
require_relative '../../generator/group_metadata'

module USCore
  class AllergyIntolerancePatientClinicalStatusSearchTest < Inferno::Test
    include USCore::SearchTest

    title 'Server returns valid results for AllergyIntolerance search by patient + clinical-status'
    description %(
      A server SHOULD support searching by patient + clinical-status on the AllergyIntolerance resource. This
      test will pass if resources are returned and match the search criteria. If
      none are returned, the test is skipped'
    %)

    id :allergy_intolerance_patient_clinical_status_search_test

    input :patient_id, default: '85'

    def resource_type
      'AllergyIntolerance'
    end

    def self.metadata
      @metadata ||= Generator::GroupMetadata.new(YAML.load_file(File.join(__dir__, 'metadata.yml')))
    end

    def scratch_resources
      scratch[:allergy_intolerance_resources] ||= []
    end

    def search_params
      {
        'patient': patient_id,
        'clinical-status': search_param_value('clinicalStatus')
      }
    end

    run do
      perform_search_test
    end
  end
end
