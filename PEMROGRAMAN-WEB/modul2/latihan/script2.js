function validationForm() {
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var alamat = document.getElementById("alamat").value;

  if (name != "" && email != "" && alamat != "") {
    return true;
  } else {
    alert("Harap isi semua bidang");
    return false;
  }
}

document.getElementById("formReg").addEventListener("submit", function (e) {
  e.preventDefault();
  if (validationForm()) {
    alert("pendaftaran berhasil");
  }
});
