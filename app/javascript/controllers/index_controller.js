import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="index"
export default class extends Controller {
  static targets = ["parent"];

  connect() {
    console.log("index connected!");
  }

  initialize() {
    this.offset = 0;
    this.flipLayout = false;
  }

  load_offer() {
    fetch(`/next_offers?offset=${this.offset}`)
      .then((response) => response.json())
      .then((data) => {
        data.forEach((offer, index) => {
          let newDiv = document.createElement("div");
          let classSuffix = this.flipLayout ? index + 6 : index + 1;
          newDiv.classList.add(`div${classSuffix}`);
          newDiv.innerHTML = `
            <h4>${offer.title}</h4>
            <p>${offer.cuisine}</p>
            <p>${offer.price_pp}</p>
          `;
          this.parentTarget.appendChild(newDiv);
        });
        this.offset += 5;
        this.flipLayout = !this.flipLayout;
      });
  }

  loadMore(event) {
    this.load_offer();
    event.preventDefault();
  }
}
