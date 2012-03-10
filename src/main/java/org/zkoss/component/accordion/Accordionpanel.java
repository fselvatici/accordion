package org.zkoss.component.accordion;

import org.zkoss.lang.Objects;
import org.zkoss.zul.impl.XulElement;

public class Accordionpanel extends XulElement {

	/* Here's a simple example for how to implements a member field */

	private String _title;

	public String getTitle() {
		return _title;
	}

	public void setTitle(String title) {

		if (!Objects.equals(_title, title)) {
			_title = title;
			smartUpdate("text", _title);
		}
	}

	// super//
	protected void renderProperties(org.zkoss.zk.ui.sys.ContentRenderer renderer)
			throws java.io.IOException {
		super.renderProperties(renderer);

		render(renderer, "text", _title);
	}

	/**
	 * The default zclass is "z-accordion"
	 */
	public String getZclass() {
		return (this._zclass != null ? this._zclass : "z-accordion");
	}
}
