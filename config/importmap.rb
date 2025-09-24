# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "flickity" # @3.0.0
pin "ev-emitter" # @2.1.2
pin "fizzy-ui-utils" # @3.0.0
pin "get-size" # @3.0.0
pin "imagesloaded" # @5.0.0
pin "unidragger" # @3.0.1
