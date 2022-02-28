require 'pry'
require 'pry-byebug'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError # rubocop:disable Lint/SuppressedException
end

namespace :db do
  desc 'Apply changes to the database'
  task :migrate do
    require 'inferno/config/application'
    require 'inferno/utils/migration'
    Inferno::Utils::Migration.new.run
  end
end

namespace :us_core do
  desc 'Generate tests'
  task :generate do
    require_relative 'lib/us_core_test_kit/generator'
    generator = USCoreTestKit::Generator.new

    generator.generate
  end
end
