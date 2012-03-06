function (out) {
	var uuid = this.parent.uuid;
	
	out.push('<li>');
	for (var w = this.firstChild; w; w = w.nextSibling)
		w.redraw(out);
	out.push('</li>');
}
