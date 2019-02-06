module NavigationHelper
 def collapsible_links_partial_path
    if user_signed_in?
      'layouts/navigation/collapsible_elements/signed_in_links'
    else
      'layouts/navigation/collapsible_elements/non_signed_in_links'
	end
 end
 def nav_contact_requests_partial_path
  # if contact requests exist
  if current_user.pending_received_contact_requests.present? 
    'layouts/navigation/header/dropdowns/contact_requests/requests' 
  else # contact requests do not exist 
    'layouts/navigation/header/dropdowns/contact_requests/no_requests'
  end
end
end