import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hoverable"];

  connect() {
    console.log("card connected!");
  }

  hover() {
    console.log("card hovered!");
    console.log(this.hoverableTarget);
    this.hoverableTarget.classList.add('active');
  }

  unhover() {
    console.log("card unhovered!");
    console.log(this.hoverableTarget);
    this.hoverableTarget.classList.remove('active');
  }
}
