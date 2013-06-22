class UsersController < InheritedResources::Base

  def batch_mail
    body = "Dear [firstname] [lastname], Please update your listing, from Mick"
    TheMerger.merge_fields(body, "firstname", "lastname")
    redirect_to users_path
  end

  def create
    create!{users_path}
  end

  def update
    update!{users_path}
  end
end
