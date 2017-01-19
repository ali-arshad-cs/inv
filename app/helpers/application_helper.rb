module ApplicationHelper
  def after_sign_in_path_for(resource_or_scope)
    employees_path
  end
end
