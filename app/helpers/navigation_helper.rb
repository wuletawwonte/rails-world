module NavigationHelper
  def nav_icon_class_for(path)
    return "fill-red stroke-red w-6 h-6" if path.any? { |p| current_page?(p) }
    "fill-grey-400 stroke-grey-400 w-6 h-6"
  end

  def nav_text_class_for(path)
    return "text-red" if path.any? { |p| current_page?(p) }
    "text-grey-400"
  end

  def show_header?
    !current_page?(new_user_session_path) && !current_page?(about_path)
  end

  # Todo: A better approach would be to support authenticated root and unauthenticated root in routes.rb
  def homepage_link
    user_signed_in? ? root_path : new_user_session_path
  end
end
