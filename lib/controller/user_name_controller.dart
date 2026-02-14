import 'package:get/get.dart';

class UserNameController extends GetxController {
  var emailName = ''.obs;
  var firstNameOf = "".obs;
  var lastNameOf = "".obs;
  var passportFirstName = "".obs;
  var passportLastName = "".obs;
  var passportNumber = "".obs;
  var passportExpiryDate = "".obs;
  var passportIssuingCountry = "".obs;

  var email = "".obs;
  var phoneNumber = "".obs;
  var address = "".obs;
  var countryFlage = "".obs;
  var dateOfBirth = "".obs;
  var displayName = "".obs;
  var nationality = "".obs;
  var gender = "".obs;

  void setGender(String g) {
    gender.value = g;
  }

  void setProfileName(String profileName) {
    emailName.value = profileName;
  }

  void setName(String f, String l) {
    firstNameOf.value = f;
    lastNameOf.value = l;
  }

  void setPassportDetail(String f, String l, String p, String e, String i) {
    passportFirstName.value = f;
    passportLastName.value = l;
    passportNumber.value = p;
    passportExpiryDate.value = e;
    passportIssuingCountry.value = i;
  }

  void setDateOfBirth(String dob) {
    dateOfBirth.value = dob;
  }

  void setDisplayName(String display) {
    displayName.value = display;
  }

  void setNationality(String nat, String naf) {
    nationality.value = nat;
    countryFlage.value = naf;
  }

  void setEmail(String em) {
    email.value = em;
  }

  var phoneCode = "".obs;
  void setPhoneCode(String pc){
    phoneCode.value = pc;
  }
  void setPhoneNumber(String phone) {
    phoneNumber.value = phone;
  }


  void setAddress(String addr) {
    address.value = addr;
  }

  var streetName = "".obs;
  var cityTown = "".obs;
  var zipCode = "".obs;
  var countryeRigion = "".obs;
  void setAddressTownZipCountry(String a, String t, String z, String c) {
    streetName.value = a;
    cityTown.value = t;
    zipCode.value = z;
    countryeRigion.value = c;
  }
}
