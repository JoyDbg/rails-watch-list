import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Add your favorite movies", "In your favorite lists !"],
      typeSpeed: 50,
      loop: true
    })
  }
}
