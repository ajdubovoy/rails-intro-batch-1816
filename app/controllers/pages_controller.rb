class PagesController < ApplicationController
  #  methods in a controller are called "actions"
  def home
  end

  def about
  end

  def contact
    @members = ["claire", "chris", "toni", "sarah", "alex"]
    @user_search = params[:search]
    if @user_search
      @members = @members.select do |member|
        member.start_with?(@user_search)
      end
    end
  end
end
