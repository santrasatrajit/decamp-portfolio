module CurrentUserConcern
  extend ActiveSupport::Concern 

  def current_user
    super || OpenStruct.new(name:"Guest user", first_name: "Guest", last_name:'user', email:'guest@example.com')
  end
end