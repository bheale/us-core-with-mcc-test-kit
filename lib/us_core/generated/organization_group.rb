require_relative 'organization/organization_read_test'
require_relative 'organization/organization_name_search_test'
require_relative 'organization/organization_address_search_test'

module USCore
  class OrganizationGroup < Inferno::TestGroup
    title 'Organization Tests'
    # description ''

    id :organization

    test from: :organization_read_test
    test from: :organization_name_search_test
    test from: :organization_address_search_test
  end
end
