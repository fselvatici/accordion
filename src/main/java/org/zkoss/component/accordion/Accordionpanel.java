package org.zkoss.component.accordion;

import org.zkoss.lang.Objects;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.UiException;
import org.zkoss.zul.impl.XulElement;

public class Accordionpanel extends XulElement {

	private String _title;

	private boolean _selected;

	public String getTitle() {
		return _title;
	}

	public void setTitle(String title) {
		if (!Objects.equals(this._title, title)) {
			this._title = title;
			smartUpdate("title", this._title);
		}
	}

	public boolean isSelected() {
		return _selected;
	}

	/**
	 * Returns the accordion owns this component.
	 * <p>
	 * It is the same as {@link #getParent}.
	 */
	public Accordion getAccordion() {
		return (Accordion) getParent();
	}

	// -- Component --//
	public void beforeParentChanged(Component parent) {
		if (parent != null && !(parent instanceof Accordion))
			throw new UiException("Wrong parent: " + parent);
		super.beforeParentChanged(parent);
	}

	// super//
	protected void renderProperties(org.zkoss.zk.ui.sys.ContentRenderer renderer)
			throws java.io.IOException {
		super.renderProperties(renderer);

		render(renderer, "title", _title);
	}

	/**
	 * The default zclass is "z-accordion"
	 */
	public String getZclass() {
		return (this._zclass != null ? this._zclass : "z-accordion");
	}

	public void setSelectedDirectly(boolean selected) {
		this._selected = selected;
	}

}
