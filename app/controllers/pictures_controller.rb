class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
    @created_a_month_ago = Picture.created_before(Time.new - 2750000)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      #if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/pictures"
    else
      #otherwise render new.html.erb
      render :new
    end

  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

    if @picture.save
      #if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/pictures"
    else
      #otherwise render new.html.erb
      render :new
    end

  end

  def destroy

    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end

end
