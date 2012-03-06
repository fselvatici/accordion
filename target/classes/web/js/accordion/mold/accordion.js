/**
 * Here's the mold file , a mold means a HTML struct that the widget really
 * presented. yep, we build html in Javascript , that make it more clear and
 * powerful.
 */
function (out) {
	var uuid = this.uuid;
	
	out.push('<div', this.domAttrs_(), ' id="',uuid, '">');
	out.push('<ol>');
	
	for (var w = this.firstChild; w; w = w.nextSibling)
		w.redraw(out);
	
	out.push('</ol>');
	out.push('</div>');

	out.push('<script>');
	out.push('(function($) {$(#',uuid,').liteAccordion("play");})(jQuery);');
	out.push('</script>');

}