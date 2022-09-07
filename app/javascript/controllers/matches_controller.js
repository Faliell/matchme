import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    environment: String,
    femaleFirstName: String,
    femaleLastName: String,
    femaleId: Number,
    femalePhoto: String,
    femaleAge: Number,
    femaleDescription: String,
    femaleInterest: String,
    femaleGeo: String,

    maleFirstName: String,
    maleLastName: String,
    maleId: Number,
    malePhoto: String,
    maleAge: Number,
    maleDescription: String,
    maleInterest: String,
    maleGeo: String
  };

  static targets = [
    'femaleFirstName',
    'femaleLastName',
    'femaleGeo',
    'femaleAge',
    'femaleDescription',
    'femaleInterest',
    'femalePhoto',
    'femaleid',
    'maleFirstName',
    'maleLastName',
    'maleGeo',
    'maleAge',
    'maleDescription',
    'maleInterest',
    'malePhoto',
    'maleid',
  ];

  connect() {
    console.log(this.environmentValue);
  };

  changeFemale() {
    fetch(`/female?current=${this.femaleidTarget.value}`)
    .then((response) => response.json())
    .then((data) => {
      this.femaleFirstNameValue = data.female.first_name
      this.femaleFirstNameTarget.innerHTML = data.female.first_name;
      this.femaleLastNameValue = data.female.last_name
      this.femaleLastNameTarget.innerHTML = data.female.last_name;
      this.femaleGeoValue = data.female.geo;
      this.femaleGeoTarget.innerHTML = data.female.geo
      this.femaleAgeValue = data.female.age;
      this.femaleAgeTarget.innerHTML = data.female.age
      this.femaleDescriptionValue = data.female.description;
      this.femaleDescriptionTarget.innerHTML = data.female.description;
      this.femaleInterestValue = data.female.interest;
      this.femaleInterestTarget.innerHTML = data.female.interest;
      this.femalePhotoValue = data.photo;
      this.femalePhotoTarget.getElementsByTagName("img")[0].src = `http://res.cloudinary.com/faliell/image/upload/c_fill,g_face,h_400,w_337/v1/${this.environmentValue}/${data.photo}`;
      this.femaleidTarget.value = data.female.id

    })
  };

  changeMale() {
    fetch(`/male`)
    .then((response) => response.json())
    .then((data) => {
      this.maleFirstNameValue = data.male.first_name
      this.maleFirstNameTarget.innerHTML = data.male.first_name;
      this.maleLastNameValue = data.male.last_name
      this.maleLastNameTarget.innerHTML = data.male.last_name;
      this.maleGeoValue = data.male.geo;
      this.maleGeoTarget.innerHTML = data.male.geo
      this.maleAgeValue = data.male.age;
      this.maleAgeTarget.innerHTML = data.male.age
      this.maleDescriptionValue = data.male.description;
      this.maleDescriptionTarget.innerHTML = data.male.description;
      this.maleInterestValue = data.male.interest;
      this.maleInterestTarget.innerHTML = data.male.interest;
      this.malePhotoValue = data.photo;
      this.malePhotoTarget.getElementsByTagName("img")[0].src = `http://res.cloudinary.com/faliell/image/upload/c_fill,g_face,h_400,w_337/v1/${this.environmentValue}/${data.photo}`;
      this.maleidTarget.value = data.male.id

    })
  };
}
