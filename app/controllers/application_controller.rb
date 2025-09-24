class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pagy::Frontend

  allow_browser versions: :modern
end
