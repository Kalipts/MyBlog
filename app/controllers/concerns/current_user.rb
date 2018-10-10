module CurrentUser
  extend ActiveSupport::Concern
  def current_user
    super || OpenStruct.new(name: "Guest", last_name: "Guest");
  end
end
