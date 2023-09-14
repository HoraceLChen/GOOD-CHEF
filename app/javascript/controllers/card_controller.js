import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hoverable"];

  connect() {
    console.log("card connected!");
  }

  hover() {
    this.hoverableTarget.classList.add('active');
  }

  unhover() {
    this.hoverableTarget.classList.remove('active');
  }
}
