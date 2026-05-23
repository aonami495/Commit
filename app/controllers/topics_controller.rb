class TopicsController < ApplicationController
  before_action :set_topic, only: %i[ show edit update destroy ]

  # GET /topics or /topics.json
  def index
    @topics = Topic.all
  end

  # GET /topics/1 or /topics/1.json
  def show
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics or /topics.json
  def create
    @topic = current_user.topics.build(topic_params)
    if @topic.save
      redirect_to @topic, notice: "topicを作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /topics/1 or /topics/1.json
  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: "更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /topics/1 or /topics/1.json
  def destroy
    if @topic.destroy
      redirect_to dashboard_path, notice: "削除しました"
    else
      render :edit, status:
      :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = current_user.topics.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def topic_params
      params.require(:topic).permit(:name, :description, :emoji, :archived)
    end
end
