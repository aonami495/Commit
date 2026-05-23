class DashboardsController < ApplicationController
  def show
    @topics = current_user.topics.where(archived: false).order(created_at: :desc)
  end
end
