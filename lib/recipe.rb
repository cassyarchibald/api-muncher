require 'httparty'

class Recipe

  attr_reader :name, :image, :uri, :url, :ingredients, :dietLabels, :id

  def initialize(label, image, uri, url, ingredients, dietLabels = [] )

    raise ArgumentError if label == nil || label.empty?
    raise ArgumentError if image == nil || image.empty?
    raise ArgumentError if uri == nil || uri.empty?
    raise ArgumentError if url == nil || url.empty?
    raise ArgumentError if ingredients == nil || ingredients.empty?

    @name = label
    @image = image
    @uri = uri
    @url = url
    @ingredients = ingredients
    @id = ( URI.encode( @uri ) )[/[^_]+$/]
    @dietLabels = dietLabels

  end

  # WillPaginate.per_page = 10

end
