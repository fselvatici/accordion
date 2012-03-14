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
accordion.Accordionpanel = zk.$extends(zul.Widget, {
	_title : null, // default value for title attribute
	_selected : false,
	_panelNum : 0,

	/**
	 * Don't use array/object as a member field, it's a restriction for ZK
	 * object, it will work like a static , share with all the same Widget class
	 * instance.
	 * 
	 * if you really need this , assign it in bind_ method to prevent any
	 * trouble.
	 * 
	 * TODO:check array or object , must be one of them ...I forgot. -_- by Tony
	 */

	$define : {
		/**
		 * The member in $define means that it has its own setter/getter. (It's
		 * a coding sugar.)
		 * 
		 * If you don't get this , you could see the comment below for another
		 * way to do this.
		 * 
		 * It's more clear.
		 * 
		 */
		getTitle : function() {
			return this._title;
		},
		getSelected : function() {
			return this._selected;
		},
		getPanelNum: function() {
			return this._panelNum;
		},
		getAccordion: function() {
			return this.parent;
		},
	},
	setTitle : function(title) {
		if (this._title != title) {
			this._title = title;
			this.rerender();
		}
	},
	setSelected: function(selected) {
		if (this._selected != selected) {
			this._selected = selected;
			this.rerender();
		}
	},
	setPanelNum: function(panelNum) {
		if (this._panelNum != panelNum) {
			this._panelNum = panelNum;
			this.rerender();
		}
	},
	/**
	 * If you don't like the way in $define , you could do the setter/getter by
	 * yourself here.
	 * 
	 * Like the example below, they are the same as we mentioned in $define
	 * section.
	 */
	_doSelect : function(evt) {
		this.fire("onSelect", {selected: this._selected});
	},

	bind_ : function() {
		/**
		 * For widget lifecycle , the super bind_ should be called as FIRST
		 * STATEMENT in the function. DONT'T forget to call supers in bind_ , or
		 * you will get error.
		 */
		this.$supers(accordion.Accordionpanel, 'bind_', arguments);

		this.domListen_(this.$n(), "onClick", '_doSelect');
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
		this.domUnlisten_(this.$n(), "onClick", '_doSelect');
		this.$supers(accordion.Accordionpanel, 'unbind_', arguments);
	},

	getZclass : function() {
		return this._zclass != null ? this._zclass : "z-accordion";
	}
});