require_relative '../../../reference_resolution_test'
require_relative '../resource_list'

module USCoreTestKit
  module USCoreV501
    class GoalReferenceResolutionTest < Inferno::Test
      include USCoreTestKit::ReferenceResolutionTest
      include ResourceList

      title 'MustSupport references within Goal resources are valid. Specific to Multiple Chronic Condition Care Plan Goal Profile'
      description %(
        This test will attempt to read external references provided within elements
        marked as 'MustSupport', if any are available.

        It verifies that at least one external reference for each MustSupport Reference element
        can be accessed by the test client, and conforms to the corresponding profile.

        Elements which may provide external references include:

        * Goal.addresses
        * Goal.expressedBy
        * Goal.outcomeReference
        * Goal.subject
      )

      id :us_core_v501_goalMCC_reference_resolution_test

      def resource_type
        'Goal'
      end

      def self.metadata
        @metadata ||= Generator::GroupMetadata.new(YAML.load_file(File.join(__dir__, 'metadata.yml'), aliases: true))
      end

      def scratch_resources
        scratch[:goal_resources] ||= {}
      end

      run do
        perform_reference_resolution_test(scratch_resources[:all])
      end
    end
  end
end
