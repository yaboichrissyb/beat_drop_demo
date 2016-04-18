class SongsController < ApplicationController
  def index
    @songs = s3=AWS::S3.new(:access_key_id => 'AKIAIUPV622LBWJUBBGA',:secret_access_key => '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').buckets['beatdropmp3'].objects
  end



  def new
    @song = Song.new
  end

  def create
     @song = Song.new(song_params)
     if @song.save
      redirect_to root_path, notice: "Song was successfully added."
    else
      render action: 'new'
    end
  end

  def show
    @song = Song.find(params[:id])
  end


  private
  def song_params
    params.require(:song).permit(:name, :artist, :song_mp3)
  end
end
