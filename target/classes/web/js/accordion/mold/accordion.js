/**
 * Here's the mold file , a mold means a HTML struct that the widget really
 * presented. yep, we build html in Javascript , that make it more clear and
 * powerful.
 */
function (out) {
	var uuid = this.uuid;

	out.push('<div', this.domAttrs_(), '><ol>');
	for (var w = this.firstChild; w; w = w.nextSibling)
		w.redraw(out);
	
	out.push('</ol></div><script>');

	var parameters='', coma=',';
	if (this._containerWidth) {
		parameters=parameters + 'containerWidth:'+this._containerWidth + coma;
	}
	if (this._containerHeight) {
		parameters=parameters + 'containerHeight:'+this._containerHeight + coma;
	}
	if (this._headerWidth) {
		parameters=parameters + 'headerWidth:'+this._headerWidth + coma;
	}
	
	if (this._autoPlay) {
		parameters=parameters + 'autoPlay:'+this._autoPlay + coma;
	}
	if (this._activateOn) {
		parameters=parameters + 'activateOn:'+this._activateOn + coma;
	}
	if (this._firstSlide) {
		parameters=parameters + 'firstSlide:'+this._firstSlide + coma;
	}
	if (this._slideSpeed) {
		parameters=parameters + 'slideSpeed:'+this._slideSpeed + coma;
	}
	if (this._pauseOnHover) {
		parameters=parameters + 'pauseOnHover:'+this._pauseOnHover + coma;
	}
	if (this._cycleSpeed) {
		parameters=parameters + 'cycleSpeed:'+this._cycleSpeed + coma;
	}
	if (this._easing) {
		parameters=parameters + 'easing:'+this._easing + coma;
	}
	var _theme = this._mold;
	parameters=parameters + "theme:'z-accordion-"+_theme + "'" + coma;
	if (this._rounded) {
		parameters=parameters + 'rounded:'+this._rounded + coma;
	}
	if (this._enumerateSlides) {
		parameters=parameters + 'enumerateSlides:'+this._enumerateSlides + coma;
	}
	if (this._linkable) {
		parameters=parameters + 'linkable:'+this._linkable + coma;
	}
	var l = parameters.length;
	parameters = parameters.substring(0,l-1);
	out.push("$('#",uuid,"').liteAccordion({",
				parameters,
			"}).show()", '</script>');
}