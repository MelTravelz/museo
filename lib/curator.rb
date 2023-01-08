class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    photographs.push(photo)
  end

  def add_artist(artist)
    artists.push(artist)
  end

  def find_artist_by_id(id)
    artists.find do |artist|
      artist.id == id
    end
    # artists_group_by_id[id].first
  end

  # def artists_group_by_id
  #   @artists_group_by_id ||= artists.group_by do |artist|
  #     artist.id
  #   end
  #   # < @instance_var ||= > memoize
  # end

end