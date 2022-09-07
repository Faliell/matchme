import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ["match"]

  connect() {
    console.log("CONNECTED")
    console.log(this.hasMatchTarget)
  }

  showCard(event) {
    let id = event.currentTarget.dataset.id;
    let target = this.matchTargets.find(match => match.dataset.id == id);
    this.matchTargets.forEach(card => card.classList.add("d-none"))
    target.classList.remove("d-none")
  }

  hideCard(event) {
    let id = event.currentTarget.dataset.id;
    this.matchTargets.forEach(card => card.classList.add("d-none"))
  }


}
