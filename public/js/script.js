$(document).ready(function() {
	var converter = Markdown.getSanitizingConverter()

  var editor1 = new Markdown.Editor(converter);
  
  editor1.run();
});