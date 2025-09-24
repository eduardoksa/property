import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

import CarouselController from "./carousel_controller"
application.register("carousel", CarouselController)
