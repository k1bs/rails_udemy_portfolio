module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
        '<br>'.html_safe +
        (link_to 'Login', new_user_session_path)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete
    end
  end

  def source_helper
    return unless session[:source]
    greeting = "Thanks for visiting me from #{session[:source]}"
    content_tag(:p, greeting, class: 'source-greeting')
  end

  def copyright_generator
    K1bsViewTool::Renderer.copyright 'Alex Kibler',
                                     'All rights reserved'
  end
end
