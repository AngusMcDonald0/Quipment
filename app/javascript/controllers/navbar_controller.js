import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  updateNavbar() {
    console.log("connected");
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("navbar-white");
    } else {
      this.element.classList.remove("navbar-white");
    }
  }
}
