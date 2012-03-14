package org.zkoss.component.accordion;

import org.zkoss.lang.Objects;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.UiException;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.impl.XulElement;

public class Accordionpanel extends XulElement {

	/* Here's a simple example for how to implements a member field */

	private String title;

	static {
		addClientEvent(Accordionpanel.class,
				AccordionSelectEvent.ON_ACCORDION_SELECT, CE_IMPORTANT);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {

		if (!Objects.equals(this.title, title)) {
			this.title = title;
			smartUpdate("title", this.title);
		}
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

		render(renderer, "title", title);
	}

	/**
	 * The default zclass is "z-accordion"
	 */
	public String getZclass() {
		return (this._zclass != null ? this._zclass : "z-accordion");
	}

	public void service(org.zkoss.zk.au.AuRequest request, boolean everError) {
		final String cmd = request.getCommand();
		if (cmd.equals(AccordionSelectEvent.ON_ACCORDION_SELECT)) {
			AccordionSelectEvent evt = AccordionSelectEvent
					.getAccordionSelectEvent(request);
			Events.postEvent(evt);
		} else
			super.service(request, everError);
	}

}
