import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log("Test")
    new Typed(this.element, {
      strings: ["Borrow Sporting Goods", "Rent Your Sporting Goods", "All Under the One Roof"],
      typeSpeed: 50,
      loop: true
    })
  }
}
