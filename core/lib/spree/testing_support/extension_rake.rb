# frozen_string_literal: true

require 'spree/testing_support/common_rake'

desc "Generates a dummy app for testing an extension"
namespace :extension do
  task :test_app, [:user_class] do |_t, _args|
    Spree::DummyGeneratorHelper.inject_extension_requirements = true

    puts
    puts "----------"
    puts "solidus - extension:test_app"
    puts "ENV.fetch('RAILS_ENV', nil): #{ENV.fetch('RAILS_ENV', nil)}"
    puts "----------"
    puts

    Rake::Task['common:test_app'].invoke

    puts
    puts "----------"
    puts "solidus - extension:test_app - END"
    puts "----------"
    puts
  end
end
