require 'ci/reporter/rake/rspec'
task :rspec => 'ci:setup:rspec'
# namespace :ci do
#   task :all => ['ci:setup:rspec', 'rspec']
# end