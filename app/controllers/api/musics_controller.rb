module Api
  class MusicsController < ApplicationController

    def index
      if params[:start].present?
        @musics = Music.where("id > ?", params[:start]).order("title asc")
      else
        @musics = Music.all.order("title asc")
      end

      if params[:artist_id].present?
        artist = Artist.where(id: params[:artist_id])
        unless artist.present?
          return render json: nil, status: 400
        end
        @musics = @musics.where(artist_id: params[:artist_id])
      end

      if params[:limit].present?
        @musics = @musics.limit(params[:limit])
      else
        @musics = @musics.limit(100)
      end

      return render json: @musics

    end

    def show
      @music = Music.where(id: params[:id])
      if @music.present?
        return render json: @music
      else
        return render json: nil, status: 404
      end
    end

    def times
      if params[:start].present?
        @musics = Music.where("id > ?", params[:start]).order("id asc")
      else
        @musics = Music.all.order("id asc")
      end

      if params[:limit].present?
        @musics = @musics.limit(params[:limit])
      else
        @musics = @musics.limit(100)
      end

      if params[:id].present?
        @musics = @musics.where(id: params[:id])

        unless @musics.present?
          return render json: nil, status: 400
        end
      end

      playHistroyArray = Array.new()

      @musics.each do |music|
        play_history_times = music.play_histories.count
        hash = { id: music.id, times: play_history_times }
        playHistroyArray.push(hash)
      end

      return render json: playHistroyArray
    end


    def recent
      if params[:start].present?
        @musics = Music.where("id > ?", params[:start]).order("id asc")
      else
        @musics = Music.all.order("id asc")
      end

      if params[:limit].present?
        @musics = @musics.limit(params[:limit])
      else
        @musics = @musics.limit(100)
      end

      recentArray = Array.new()

      @musics.each do |music|
       play_histories = music.play_histories.order(created_at: :desc)
        
        last_played = play_histories.first
        if last_played.present?
          hash = { id: music.id, last_played: last_played.created_at }
          recentArray.push(hash)
        end
      end

      return render json: recentArray
    end

  end
end
