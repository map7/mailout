class UsersController < InheritedResources::Base
  include TheMerger
  
  def batch_mail
    letter= Letter.find(params[:letter])

    if letter
      merge_fields(letter.body, "firstname", "lastname")
      flash[:notice] = "Letter '#{letter.subject}' sent"
    else
      flash[:error] = "Could not find letter."
    end
    redirect_to users_path
  end

  def create
    create!{users_path}
  end

  def update
    update!{users_path}
  end
end
