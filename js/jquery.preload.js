/*!
 * $.preload() function for jQuery – http://mths.be/preload
 * Preload images, CSS and JavaScript files without executing them
 * Script by Stoyan Stefanov – http://www.phpied.com/preload-cssjavascript-without-execution/
 * Slightly rewritten by Mathias Bynens – http://mathiasbynens.be/
 * Note that since this script relies on jQuery, the preloading process will not start until jQuery has finished loading.
 */

jQuery.preload = function(array) {
	var length = array.length,
	    document = window.document,
	    body = document.body,
	    isIE = 'fileSize' in document,
	    object;
	while (length--) {
		if (isIE) {
			new Image().src = array[length];
			continue;
		}
		object = document.createElement('object');
		object.data = array[length];
		object.width = object.height = 0;
		body.appendChild(object);
	}
};

// Example:

$(function() {
	$.preload([
		'http://hang.nodester.com/foo.png?2000',
		'http://hang.nodester.com/foo.js?2000',
		'http://hang.nodester.com/foo.css?2000'
	]);
});