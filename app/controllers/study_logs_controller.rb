class StudyLogsController < ApplicationController
  def index
  end

  def create
    @topic = current_user.topics.find(params[:topic_id])
    @study_log = @topic.study_logs.create(user: current_user, started_at: Time.current)
    redirect_to @topic
  end

  def update
    @study_log = current_user.study_logs.find(params[:id])
    @study_log.update(finished_at: Time.current)
    redirect_to @study_log.topic
  end

  def destroy
  end

  private

  def study_log_params
    params.require(:study_log).permit(:started_at, :finished_at, :memo)
  end
end
