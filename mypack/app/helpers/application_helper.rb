module ApplicationHelper
  def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-warning"
      when :alert then "alert alert-danger"
    end
  end

  def user_signed_in
    $user
  end
end
