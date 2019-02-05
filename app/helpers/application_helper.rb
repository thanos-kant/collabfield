require 'navigation_helper.rb'

module ApplicationHelper
  include NavigationHelper
  include Rails.application.routes.url_helpers
end