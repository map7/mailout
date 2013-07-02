class UsersController < InheritedResources::Base
  include TheMerger
  
  def batch_mail
    letter= Letter.find(params[:letter])

    if letter
      mail_merge(from: "map7777@gmail.com",
                 subject: letter.subject,
                 body: letter.body)
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
