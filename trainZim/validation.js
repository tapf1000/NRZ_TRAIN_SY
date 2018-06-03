
function validateData() {

   var name = document.getElementById("fName");
   var pattern = /^[A-Za-z \'\-]+$/;
   
   var nat_id = document.getElementById("id_num");
   var id_regex = /^[0-9 \-]+[a-zA-Z]+[0-9]+$/;
   
   if (!(pattern.test(name.value))) {
        alert("INVALID ENTRY:\nThe value entered for name is not valid. Names cannot include numbers or other punctuation marks.\nPlease start again.");
		window.navigate("index.php");
   }
   
   
   if (!(id_regex.test(nat_id.value))) {
       alert("INVALID ENTRY:\nThe value entered is invalid. National ID entries should begin and end with numbers and should include atleast one letter.\nPlease start again.");
	   window.navigate("index.php");
	}
	
	var tr = 'Mdabuko';
	return tr;
 }
 