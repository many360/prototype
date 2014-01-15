class MessagesController < ApplicationController
  def index
  end

  def new

  end

  def create
    if !params[:message][:picture].nil?
      if params[:message][:message] != ""
        message = Message.create(user_id: current_user.id, message: params[:message][:message], picture: params[:message][:picture].original_filename)
        upload(params[:message][:picture])
      end
      message = Message.create(user_id: current_user.id, message: nil, picture: params[:message][:picture].original_filename)
      upload(params[:message][:picture])
      redirect_to root_path
    elsif !params[:message][:message].nil?
      message = Message.create(user_id: current_user.id, message: params[:message][:message], picture: nil)
      redirect_to root_path
    else
      render 'messages/_new'
    end
  end

  def upload(file)
    dir = "#{Rails.root}/app/assets/#{current_user.id}"
    Dir.mkdir(dir) unless File.exists?(dir)
    uploaded_io = file
    File.open(Rails.root.join('app', "assets/#{current_user.id}", uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end
end
