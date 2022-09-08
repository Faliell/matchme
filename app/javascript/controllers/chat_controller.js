import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ["match", "chat"]

  connect() {
    console.log("CONNECTED")
  }

  showDescription(event) {
    let id = event.currentTarget.dataset.id;
    let target = this.matchTargets.find(match => match.dataset.id == id);
    this.matchTargets.forEach(card => card.classList.add("d-none"))
    this.chatTargets.forEach(card => card.classList.add("d-none"))
    target.classList.remove("d-none")
  }

  hideDescription(event) {
    this.matchTargets.forEach(card => card.classList.add("d-none"))
  }

  showChat(event) {
    let id = event.currentTarget.dataset.id;
    let target1 = this.chatTargets.find(chat => chat.dataset.id == id);
    this.matchTargets.forEach(card => card.classList.add("d-none"))
    this.chatTargets.forEach(card => card.classList.add("d-none"))
    target1.classList.remove("d-none")
  }

  hideChat(event) {
    this.chatTargets.forEach(card => card.classList.add("d-none"))
  }




}
