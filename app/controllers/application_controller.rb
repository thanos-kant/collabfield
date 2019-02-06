class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :opened_conversations_windows

  def opened_conversations_windows
    if user_signed_in?
      # opened conversations
      session[:private_conversations] ||= []
      @private_conversations_windows = Private::Conversation.includes(:recipient, :messages)
                                        .find(session[:private_conversations])
    else
      @private_conversations_windows = []
    end
  end
  
  def redirect_if_not_signed_in
  redirect_to root_path if !user_signed_in?
end

def redirect_if_signed_in
  redirect_to root_path if user_signed_in?
end
end
