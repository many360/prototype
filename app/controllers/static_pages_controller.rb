class StaticPagesController < ApplicationController
  def home
    @all_messages = Message.all.reverse_order
    @messages = Message.new
  end

  def update

  end
end
