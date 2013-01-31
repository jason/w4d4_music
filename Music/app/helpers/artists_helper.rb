module ArtistsHelper
  def format_link_title(artist)
    if artist.band
      "#{artist.name} - <i>#{artist.band.name}</i>".html_safe
    else
      "#{artist.name}"
    end
  end
end
