require "test_helper"
require 'phantomjs'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
