import { Application } from "@hotwired/stimulus"
import FancyboxController from "./controllers/fancybox_controller"

const application = Application.start()
application.register("fancybox", FancyboxController)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
