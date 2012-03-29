function (out) {
	var uuid = this.uuid;

	out.push('<li>');
	if (!this.firstChild) { // If the panel doesn't have children
		out.push('<h2 id="',uuid,'"><span>',this._title,'</span></h2>');
		out.push('<div>');
		out.push('</div>');
	} else {
		for (var w = this.firstChild; w; w = w.nextSibling) {
			out.push('<h2 id="',uuid,'"><span>',this._title,'</span></h2>');
			out.push('<div>');
			w.redraw(out);
			out.push('</div>');
		}
	}
	out.push('</li>');
}
