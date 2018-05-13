class PicturesController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_picture, only: [:edit, :update, :destroy]

  def picture_params
    params.require(:picture).permit(:title, :artist, :url)
  end


  def index
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
    @created_a_month_ago = Picture.created_before(Time.now - 1.month)
  end

  def show
    # @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create

    @picture = Picture.new(picture_params)

    # @picture.title = params[:picture][:title]
    # @picture.artist = params[:picture][:artist]
    # @picture.url = params[:picture][:url]
    @picture.user_id = session[:user_id]

    if @picture.save
      #if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/pictures"
    else
      #otherwise render new.html.erb
      render :new
    end

  end

  def edit
    # @picture = Picture.find(params[:id])
  end

  def update

    @picture = picture_params
    
    # @picture.title = params[:picture][:title]
    # @picture.artist = params[:picture][:artist]
    # @picture.url = params[:picture][:url]

    if @picture.save
      #if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/pictures"
    else
      #otherwise render new.html.erb
      render :new
    end

  end

  def destroy

    # @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end

  def load_picture
    @picture = Picture.find(params[:id])
  end

end
