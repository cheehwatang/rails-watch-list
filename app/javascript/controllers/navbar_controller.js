import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "logo", "newList" ]

  connect() {
  }

  updateNavbarBackground() {
    if (window.scrollY >= 400) {
      this.element.classList.add("navbar-lewagon-white")
      this.logoTarget.classList.add("navbar-logo-black")
      this.newListTarget.classList.remove("btn-outline-light")
      this.newListTarget.classList.add("btn-outline-dark")
    } else {
      this.element.classList.remove("navbar-lewagon-white")
      this.logoTarget.classList.remove("navbar-logo-black")
      this.newListTarget.classList.add("btn-outline-light")
      this.newListTarget.classList.remove("btn-outline-dark")
    }
  }
}
