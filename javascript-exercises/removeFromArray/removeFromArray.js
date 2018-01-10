var removeFromArray = function() {
  let arg = arguments;
  console.log(arguments);
  array = arg[0]
  console.log(array)
  //How cheater would it be to start my array at 1, just this once?
  for (var i = 0; i<array.length;i++)
  	//console.log(array[i])
  	for (var j = 1; j < arg.length; j++)
  	{
  	  if (array[i] === arg[j])
  	  {
  	    array.splice(i,1);
  	    return array
  	  }
  	}
}

module.exports = removeFromArray


//Loop through each element and if the argument === the element, remove that element. Make sure to
//use ===, though!