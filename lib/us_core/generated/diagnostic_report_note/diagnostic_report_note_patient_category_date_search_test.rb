require_relative '../../search_test'
require_relative '../../generator/group_metadata'

module USCore
  class DiagnosticReportNotePatientCategoryDateSearchTest < Inferno::Test
    include USCore::SearchTest

    title 'Server returns valid results for DiagnosticReport search by patient + category + date'
    description %(
      A server SHALL support searching by patient + category + date on the DiagnosticReport resource. This
      test will pass if resources are returned and match the search criteria. If
      none are returned, the test is skipped'
    %)

    id :diagnostic_report_note_patient_category_date_search_test

    input :patient_id, default: '85'

    def resource_type
      'DiagnosticReport'
    end

    def self.metadata
      @metadata ||= Generator::GroupMetadata.new(YAML.load_file(File.join(__dir__, 'metadata.yml')))
    end

    def scratch_resources
      scratch[:diagnostic_report_note_resources] ||= []
    end

    def search_params
      {
        'patient': patient_id,
        'category': search_param_value('category'),
        'date': search_param_value('effective')
      }
    end

    run do
      perform_search_test
    end
  end
end
