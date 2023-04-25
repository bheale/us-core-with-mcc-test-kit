require_relative '../../../must_support_test'

module USCoreTestKit
  module USCoreV501
    class GoalMustSupportTest < Inferno::Test
      include USCoreTestKit::MustSupportTest

      title 'All must support elements are provided in the Multiple Chronic Condition Care Plan Goal resources returned'
      description %(
        MCC Responders SHALL be capable of populating all data elements as
        part of the query results as specified by the US Core Server Capability
        Statement and the [MCC Goal Profile](http://hl7.org/fhir/us/mcc/2023Jan/StructureDefinition-MCCGoal.html). This test will look through the Goal resources
        found previously for the following must support elements:

        * Goal.achievementStatus
        * Goal.addresses
        * Goal.description
        * Goal.expressedBy
        * Goal.extension:goal-acceptance
        * Goal.extension:reasonRejected
        * Goal.extension:relationship
        * Goal.lifecycleStatus
        * Goal.outcomeReference
        * Goal.priority
        * Goal.subject
        * Goal.target
        * Goal.target.dueDate
      )

      id :us_core_v501_goalMCC_must_support_test

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
        perform_must_support_test(all_scratch_resources)
      end
    end
  end
end