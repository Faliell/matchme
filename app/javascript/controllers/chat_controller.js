import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ["match", "test"]

  connect() {
    console.log("CONNECTED")
  }

  showChat(event) {
    let id = event.currentTarget.dataset.id;
    let target = this.matchTargets.find(match => match.dataset.id == id);
    this.matchTargets.forEach(card => card.classList.add("d-none"))
    target.classList.remove("d-none")
  }

  hideChat(event) {
    let id = event.currentTarget.dataset.id;
    let target = this.testTargets.find(test => test.dataset.id == id);
    this.matchTargets.forEach(card => card.classList.add("d-none"))
  }
}
