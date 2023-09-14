import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["parent"];

  connect() {
    console.log("index connected!");
  }

  initialize() {
    this.offset = 5;  // Start from the 6th element since the first 5 are already loaded
    this.flipLayout = true;  // Start with the layout of div6-10
  }

  load_offer() {
    fetch(`/next_offers?offset=${this.offset}`)
      .then((response) => response.json())
      .then((data) => {
        if (data.length === 0) {
          console.log("No more offers to load.");
          return;
        }

        let newCardRow = document.createElement('div');
        newCardRow.classList.add('card-row', 'mt-0');

        data.forEach((offer, index) => {
        let newDiv = document.createElement("div");
        let classSuffix;
        let imageUrl = offer.img ? offer.img : "https://images.squarespace-cdn.com/content/59488c7dbf629aaeded8b9b1/1556478492296-CRA46VU26F25E2PSG092/yoshi_April2019_1.jpg";

        if (this.flipLayout) {
          classSuffix = index % 5 + 6;  // use 6-10
        } else {
          classSuffix = index % 5 + 1;  // use 1-5
        }

        newDiv.classList.add(`div${classSuffix}`);

        // Add an ID to div1 and div6
        if (classSuffix === 1 || classSuffix === 6) {
          newDiv.id = `div${classSuffix}`;
        }


        newDiv.innerHTML = `
        <div data-controller="card" class="card-offer div${classSuffix} in-line image-container align-items-end justify-content-center" style="background-image: url(${imageUrl})">
          <div class='clickable-overlay' data-action='click->index#click' data-url='${offer.url}'>
          </div>
          <div>
            <h4 class="div${classSuffix}card mb-0">${offer.title}</h4>
            <p id="div${classSuffix}" class="card-subtitle">${offer.cuisine} / $${offer.price_pp} </p>
          </div>
        </div>
      `;

        newCardRow.appendChild(newDiv);
        });


        const loadMoreButtons = document.getElementsByClassName("load-more-button");
        const lastLoadMoreButton = loadMoreButtons[loadMoreButtons.length - 1];
        this.parentTarget.insertBefore(newCardRow, lastLoadMoreButton);


        // Only flip layout if you have successfully loaded 5 new offers
        if (data.length === 5) {
          this.flipLayout = !this.flipLayout;
        }

        this.offset += data.length;
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  loadMore(event) {
    this.load_offer();
    event.preventDefault();
  }

  click(event) {
    event.preventDefault();
    const url = event.currentTarget.dataset.url;  // Access data-clickable-url
    if (url) {
      window.location.href = url;
    }
  }


}
