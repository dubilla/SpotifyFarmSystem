class PlaylistsController < ApplicationController
  def index
    spotify_user = RSpotify::User.find(request.env['omniauth.auth'].uid)
    hash = spotify_user.to_hash
    spotify_user = RSpotify::User.new(hash)
    @playlists = spotify_user.playlists
  end
end
