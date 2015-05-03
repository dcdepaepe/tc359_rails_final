class BandCollection < ActiveRecord::Base
  validates_presence_of :band_name, :number_of_albums
end
