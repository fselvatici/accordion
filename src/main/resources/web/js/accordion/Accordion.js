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

	$define : {
		getContainerWidth : function() {
			return this._containerWidth;
		},
		getContainerHeight : function() {
			return this._containerHeight;
		},
		getHeaderWidth : function() {
			return this._headerWidth;
		},
		getAutoPlay : function() {
			return this._autoPlay;
		},
		getActivateOn : function() {
			return this._activateOn;
		},
		getFirstSlide : function() {
			return this._firstSlide;
		},
		getActivateOn : function() {
			return this.__activateOn;
		},
		getSlideSpeed : function() {
			return this._slideSpeed;
		},
		getPauseOnHover : function() {
			return this._pauseOnHover;
		},
		getCycleSpeed : function() {
			return this._cycleSpeed;
		},
		getEasing : function() {
			return this._easing;
		},
		getTheme : function() {
			return this._theme;
		},
		getRounded : function() {
			return this._rounded;
		},
		getEnumerateSlides : function() {
			return this._enumerateSlides;
		},
		getLinkable : function() {
			return this._linkable;
		},
	},
	/**
	 * Returns the accordionpanel that this accordion owns.
	 * @return Accordionpanel
	 */
	getAccordionpanel: function () {
		return this.accordionpanel;
	},

	setContainerWidth : function(containerWidth) {
		if (this._containerWidth != containerWidth) {
			this._containerWidth = containerWidth;
			this.rerender();
		}
	},
	setContainerHeight : function(containerHeight) {
		if (this._containerHeight != containerHeight) {
			this._containerHeight = containerHeight;
			this.rerender();
		}
	},
	setHeaderWidth : function(headerWidth) {
		if (this._headerWidth != headerWidth) {
			this._headerWidth = headerWidth;
			this.rerender();
		}
	},
	setAutoPlay : function(autoPlay) {
		if (this._autoPlay != autoPlay) {
			this._autoPlay = autoPlay;
			this.rerender();
		}
	},
	activateOn : function() {
		if (this._activateOn != activateOn) {
			this._activateOn = activateOn;
			this.rerender();
		}
	},
	firstSlide : function() {
		if (this._firstSlide != firstSlide) {
			this._firstSlide = firstSlide;
			this.rerender();
		}
	},
	slideSpeed : function() {
		if (this._slideSpeed != slideSpeed) {
			this._slideSpeed = slideSpeed;
			this.rerender();
		}
	},
	pauseOnHover : function() {
		if (this._pauseOnHover != pauseOnHover) {
			this._pauseOnHover = pauseOnHover;
			this.rerender();
		}
	},
	cycleSpeed : function() {
		if (this._cycleSpeed != cycleSpeed) {
			this._cycleSpeed = cycleSpeed;
			this.rerender();
		}
	},
	rounded : function() {
		if (this._rounded != rounded) {
			this._rounded = rounded;
			this.rerender();
		}
	},
	easing : function() {
		if (this._easing != easing) {
			this._easing = easing;
			this.rerender();
		}
	},
	setTheme : function(theme) {
		if (this._theme != theme) {
			this._theme = theme;
			this.rerender();
		}
	},
	enumerateSlides : function() {
		if (this._enumerateSlides != enumerateSlides) {
			this._enumerateSlides = enumerateSlides;
			this.rerender();
		}
	},
	linkable : function() {
		if (this._linkable != linkable) {
			this._linkable = rounded;
			this.rerender();
		}
	},

	bind_ : function() {
		/**
		 * For widget lifecycle , the super bind_ should be called as FIRST
		 * STATEMENT in the function. DONT'T forget to call supers in bind_ , or
		 * you will get error.
		 */
		this.$supers(accordion.Accordion, 'bind_', arguments);

		// A example for domListen_ , REMEMBER to do domUnlisten in unbind_.
		// this.domListen_(this.$n("cave"), "onClick", "_doItemsClick");
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
	
	onChildAdded_: function (child) {
		this.$supers('onChildAdded_', arguments);
		if (child.$instanceof(accordion.Accordionpanel)) {
			this.accordionpanel = child;
		}
		this.rerender();
	},
	
	onChildRemoved_: function (child) {
		this.$supers('onChildRemoved_', arguments);
		if (child == this.accordionpanel)
			this.tabpanels = null;
		if (!this.childReplacing_)
			this.rerender();
	},

});