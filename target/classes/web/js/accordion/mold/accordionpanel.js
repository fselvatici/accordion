function (out) {
	var uuid = this.parent.uuid;
	
	out.push('<li>');
	for (var w = this.firstChild; w; w = w.nextSibling) {
		out.push('<h2><span>',this._title,'</span></h2>');
		w.redraw(out);
	}
	out.push('</li>');
}
