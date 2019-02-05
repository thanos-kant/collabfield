require 'navigation_helper.rb'
include PostsHelper
module ApplicationHelper
  include NavigationHelper
  include Rails.application.routes.url_helpers
end