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
  
  def single_mail
    letter= Letter.find(params[:letter])
    user= User.find(params[:id])

    if letter
      mail_merge(from: "map7777@gmail.com",
                 subject: letter.subject,
                 body: letter.body,
                 single: user)
      flash[:notice] = "Letter '#{letter.subject}' sent to '#{user.firstname} #{user.lastname}'"
    else
      flash[:error] = "Could not find letter."
    end
    redirect_to user_path(params[:id])
  end

  def index
    @q = User.search(params[:q])
    @users = @q.result(distinct: true)
  end
  
  def create
    create!{users_path}
  end

  def update
    update!{users_path}
  end
end
