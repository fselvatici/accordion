function (out) {
	var uuid = this.uuid;

	out.push('<li>');
	if (!this.firstChild) { // If the panel doesn't have children
		out.push('<h2 id="',uuid,'"><span>',this._title,'</span></h2><div></div>');
	} else {
		out.push('<h2 id="',uuid,'"><span>',this._title,'</span></h2><div><div id="', uuid, '-cave">');
		for (var w = this.firstChild; w; w = w.nextSibling) {
			w.redraw(out);
		}
		out.push('</div></div>');
	}
	out.push('</li>');
}
