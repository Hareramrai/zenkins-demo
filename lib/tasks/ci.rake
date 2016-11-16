unless Rails.env.production?
  require 'ci/reporter/rake/rspec'
  task :rspec => 'ci:setup:rspec'
end
