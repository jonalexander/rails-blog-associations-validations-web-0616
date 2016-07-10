class TagController < ApplicationController
    # GET /tags
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  def show
    @tag = Tag.find(params[:id])
  end

  # GET /tags/new
  def new
    @tag = Tag.new
  end

  # GET /tags/1/edit
  def edit
    @tag = Tag.find(params[:id])
  end

  # POST /tags
  def create
    @tag = Tags.new(tag_params)
    @tag.save
  end

  # PATCH/PUT /tags/1
  def update
  end

  # DELETE /tags/1
  def destroy
    @tag.destroy
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
