function book(title,author,pages,read,info) {
	this.title = title
	this.author = author
	this.pages = pages
	this.read = read
	this.info = function() {
		return "${title}, by ${author}, ${pages}, ${read} already";
	}
}

const theHobbit = new book("The Hobbit", "J.R.R. Tolkien", "295 pages", "read");

console.log(theHobbit.info());