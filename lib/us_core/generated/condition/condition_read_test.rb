require_relative '../../read_test'

module USCore
  class ConditionReadTest < Inferno::Test
    include USCore::ReadTest

    title 'Server returns correct Condition resource from Condition read interaction'
    description 'A server SHALL support the Condition read interaction.'

    id :condition_read_test

    def resource_type
      'Condition'
    end

    def scratch_resources
      scratch[:condition_resources] ||= []
    end

    run do
      perform_read_test(scratch_resources)
    end
  end
end
