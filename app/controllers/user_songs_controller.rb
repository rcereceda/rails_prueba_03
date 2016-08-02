class UserSongsController < ApplicationController
  before_action :set_user_song, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :user
  load_and_authorize_resource :user_song, through: :user

  def remove
    @user = User.find(params[:user_id])
    @user_song = UserSong.find(params[:id])
    if @user_song.destroy
      redirect_to user_user_songs_path(@user.id), notice: "Lo lograste"
    else
      redirect_to user_user_songs_path(@user.id), notice: "No puedes borrarla"
    end
  end
  # GET /user_songs
  # GET /user_songs.json
  def index
    @user_songs = UserSong.where(user: User.find(params[:user_id]))
  end

  # GET /user_songs/1
  # GET /user_songs/1.json
  def show
  end

  # GET /user_songs/new
  def new
    @user_song = UserSong.new
  end

  # GET /user_songs/1/edit
  def edit
  end

  # POST /user_songs
  # POST /user_songs.json
  def create
    @user_song = UserSong.new(user_song_params)
    @user_song.user = current_user

    respond_to do |format|
      if @user_song.save
        format.html { redirect_to songs_path, notice: 'User song was successfully created.' }
        format.json { render :show, status: :created, location: @user_song }
      else
        format.html { render :new }
        format.json { render json: @user_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_songs/1
  # PATCH/PUT /user_songs/1.json
  def update
    respond_to do |format|
      if @user_song.update(user_song_params)
        format.html { redirect_to songs_path, notice: 'User song was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_song }
      else
        format.html { render :edit }
        format.json { render json: @user_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_songs/1
  # DELETE /user_songs/1.json
  def destroy
    @user_song.destroy
    respond_to do |format|
      format.html { redirect_to user_songs_url, notice: 'User song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_song
      @user_song = UserSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_song_params
      params.require(:user_song).permit(:position, :song_id)
    end
end
