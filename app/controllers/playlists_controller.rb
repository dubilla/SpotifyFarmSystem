class PlaylistsController < ApplicationController
  def index
    spotify_user = RSpotify::User.find(Rails.application.credentials.spotify[:username])
    hash = spotify_user.to_hash
    spotify_user = RSpotify::User.new(hash)
    @playlists = spotify_user.playlists

    render json: @playlists
  end
end
