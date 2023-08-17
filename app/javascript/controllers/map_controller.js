import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    console.log('insert map here');
    console.log(this.divTarget);
    mapboxgl.accessToken = this.apiKeyValue
    // this.map = new mapboxgl.Map({
    //   container: this.element,
    // })

    const map = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [-74.5, 40], // starting position
      zoom: 9
    });

    // this.#addMarkersToMap()
    // this.#fitMapToMarkers()
    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //                                     mapboxgl: mapboxgl }))
  }

// #addMarkersToMap() {
//   this.markersValue.forEach((marker) => {
//     // Create a popup
//     const popup = new mapboxgl.Popup().setHTML(marker.popup_html)

//     // Create a custom marker
//     const customMarker = document.createElement("div")
//     customMarker.innerHTML = marker.marker_html

//     new mapboxgl.Marker(customMarker)
//       .setLngLat([ marker.lng, marker.lat ])
//       .setPopup(popup)
//       .addTo(this.map)
//   })
// }

// #fitMapToMarkers() {
//   const bounds = new mapboxgl.LngLatBounds()
//   this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
//   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 500 })
// }
}
