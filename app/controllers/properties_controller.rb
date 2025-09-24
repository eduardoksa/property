class PropertiesController < ApplicationController
  include Pagy::Backend

  def index
    base_query = Property.includes(photos: { file_attachment: :blob })
    @total_properties = Property.count
    @pagy, @properties = pagy(base_query)
  end
end
