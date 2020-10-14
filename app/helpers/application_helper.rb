module ApplicationHelper
  def login_helper(current_user)
    if user_signed_in?
      (link_to current_user.name, edit_user_registration_path, class: 'button is-primary') +
        (link_to 'Logout', destroy_user_session_path, method: :delete, class: 'button is-primary ml-3')
    else
      (link_to 'Sign In', new_user_session_path, class: 'control button is-primary') +
        (link_to 'Sign Up', new_user_registration_path, class: 'control button is-primary ml-3')
    end
  end

  def notification(notice, alert)
    if notice
      content_tag(:p, notice, class: 'notice notification is-primary global-notification')
    elsif alert
      content_tag(:p, alert, class: 'alert notification is-danger global-notification')
    end
  end
end
