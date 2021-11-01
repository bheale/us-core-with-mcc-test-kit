require_relative '../../read_test'

module USCore
  class ProvenanceReadTest < Inferno::Test
    include USCore::ReadTest

    title 'Server returns correct Provenance resource from Provenance read interaction'
    description 'A server SHALL support the Provenance read interaction.'

    id :provenance_read_test

    def resource_type
      'Provenance'
    end

    def scratch_resources
      scratch[:provenance_resources] ||= []
    end

    run do
      perform_read_test(scratch.dig(:references, 'Provenance'))
    end
  end
end
