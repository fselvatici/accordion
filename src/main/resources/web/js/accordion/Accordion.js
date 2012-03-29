/**
 * 
 * Base naming rule: The stuff start with "_" means private , end with "_" means
 * protect , others mean public.
 * 
 * All the member field should be private.
 * 
 * Life cycle: (It's very important to know when we bind the event) A widget
 * will do this by order : 1. $init 2. set attributes (setters) 3. rendering
 * mold (@see mold/accordion.js ) 4. call bind_ to bind the event to dom .
 * 
 * this.deskop will be assigned after super bind_ is called, so we use it to
 * determine whether we need to update view manually in setter or not. If
 * this.desktop exist , means it's after mold rendering.
 * 
 */
accordion.Accordion = zk.$extends(zul.Widget, {
	_containerWidth : null,
	_containerHeight : null,
	_headerWidth : null,
	_autoPlay : null,
	_activateOn : null,
	_firstSlide : null,
	_slideSpeed : null,
	_pauseOnHover : null,
	_cycleSpeed : null,
	_easing : null,
	_theme : null,
	_rounded : null,
	_enumerateSlides : null,
	_linkable : null,

	_selectedpanel : null,

	$define : {
		activateOn : _zkf = function(_val) {
			if (this.desktop) {
				this.rerender();
			}
		},
		activateOn : _zkf,
		firstSlide : _zkf,
		slideSpeed : _zkf,
		pauseOnHover : _zkf,
		cycleSpeed : _zkf,
		rounded : _zkf,
		easing : _zkf,
		theme : _zkf,
		enumerateSlides : _zkf,
		linkable : _zkf,
		containerWidth : _zkf,
		containerHeigh : _zkf,
		autoPlay : _zkf,
		selectedpanel : _zkf
	},

	_doClick : function(evt) {
		if (evt.domTarget.nodeName == 'SPAN') {
			var paneluuid = evt.domTarget.parentNode.getAttribute('id');
			selectedpanel = zk.Widget.$(paneluuid);
			this.fire("onSelect", {
				items : [ selectedpanel ],
				reference : paneluuid
			});
		}
	},
	setHflex : function(v) {
		if (v != 'min')
			v = false;
		this.$super(accordion.Accordion, 'setHflex', v);
	},

	bind_ : function() {
		/**
		 * For widget lifecycle , the super bind_ should be called as FIRST
		 * STATEMENT in the function. DONT'T forget to call supers in bind_ , or
		 * you will get error.
		 */
		this.$supers(accordion.Accordion, 'bind_', arguments);
		zWatch.listen({
			onSize : this,
			beforeSize : this
		});

		// A example for domListen_ , REMEMBER to do domUnlisten in unbind_.
		this.domListen_(this.$n(""), "onClick", "_doClick");
	},

	/*
	 * A example for domListen_ listener.
	 */
	/*
	 * _doItemsClick: function (evt) { alert("item click event fired"); },
	 */
	unbind_ : function() {

		// A example for domUnlisten_ , should be paired with bind_
		// this.domUnlisten_(this.$n("cave"), "onClick", "_doItemsClick");

		/*
		 * For widget lifecycle , the super unbind_ should be called as LAST
		 * STATEMENT in the function.
		 */
		this.$supers(accordion.Accordion, 'unbind_', arguments);
	},

	getZclass : function() {
		return this._zclass != null ? this._zclass : "z-accordion";
	},

	onChildAdded_ : function(child) {
		this.$supers('onChildAdded_', arguments);
		if (child.$instanceof(accordion.Accordionpanel)) {
			this.rerender();
		}
	},

	onChildRemoved_ : function(child) {
		this.$supers('onChildRemoved_', arguments);
		if (child == this.accordionpanel) {
			this.rerender();
		}

		if (!this.childReplacing_) {
			this.rerender();
		}
	},
	onSize : function() {
		this._fixWidth();
	},
	_fixWidth : function() {
		/*
		var parent = this.parent.$n();
		if (this.__width || !zk(parent).isRealVisible())
			return;
		var width = parent.offsetWidth, n = this.$n(), sumWidth = 0;
		alert(this.parent.uuid);
		for ( var w = this.firstChild; w; w = w.nextSibling) {
			alert(w.uuid);
			if (w.style && w.style.width) {
				sumWidth = sumWidth + w.style.width;
			}
		}
		n.style.width = jq.px0(zk(n).revisedWidth(width));
		*/
	},

});