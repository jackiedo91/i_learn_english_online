# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  coverage_dir 'tmp/coverage'

  enable_coverage :branch

  # Add some more custom groups
  # add_group 'Services', '/app/services/'
  # add_group 'Workers', '/app/workers/'
  # add_group 'Concerns', ['/app/controllers/concerns', '/app/models/concerns']

  # currently, some features don't be implemented yet
  add_filter %r{^/app/channels/}
  add_filter %r{^/app/jobs/}
  add_filter %r{^/app/mailers/}

  add_filter %r{^/spec/}
  add_filter %r{^/config/}
end
