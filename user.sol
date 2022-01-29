pragma solidity ^0.4.16;

// import library file
import "stringUtils.sol";
contract userRecords {
  // enum type variable to store user gender
  enum genderType { male, female, others } 
  // Actual user object which we will store
  struct user{
    string name;
    string date;
    genderType gender;
    string email;
    string phone;
    string password;
    string aadhar;
  }
  // user object
  user user_obj;
  //Internal function to conver genderType enum from string
  function getGenderFromString(string gender) internal returns   (genderType) {
    if(StringUtils.equal(gender, "male")) {
      return genderType.male;
    } else if(StringUtils.equal(gender, "female")) {
      return genderType.female;
    } else {
      return genderType.others;
    }
  }
  //Internal function to convert genderType enum to string
  function getGenderToString(genderType gender) internal returns (string) {
    if(gender == genderType.male) {
      return "male";
    } else if(gender == genderType.female) {
      return "female";
    } else {
      return "others";
    }
  }
  // set user public function
  // This is similar to persisting object in db.
  function setUser(string name, string date, string gender, string email, string phone, string password, string aadhar) public {
    genderType gender_type = getGenderFromString(gender);
    user_obj = user({name:name, date: date, gender: gender_type, email: email, phone: phone, password: password, aadhar: aadhar});
  }
  
  // get user public function
  // This is similar to getting object from db.
  function getUser() public returns (string, string, string, string, string, string, string) {
    return (user_obj.name, user_obj.date, getGenderToString(user_obj.gender), user_obj.email, user_obj.phone, user_obj.password, user_obj.aadhar);
  }
}