import { Controller } from "@hotwired/stimulus"
import { Fancybox } from "@fancyapps/ui"

export default class extends Controller {
  connect() {
    // Sempre que o controller conectar, bind o Fancybox nos links com data-fancybox
    Fancybox.bind("[data-fancybox]", {
      // Suas opções, se quiser
    });
  }
}
