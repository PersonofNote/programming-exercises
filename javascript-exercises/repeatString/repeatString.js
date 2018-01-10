var repeatString = function(string, repeats) {

  var newString = ""
  if (repeats >= 0)
    {
    	for (var i = 0; i < repeats; i++) {
        newString += string;
        }
        return newString;
    }
   else return "ERROR";

}

repeatString("hello", 5)

module.exports = repeatString




