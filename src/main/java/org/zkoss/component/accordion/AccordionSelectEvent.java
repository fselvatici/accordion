package org.zkoss.component.accordion;

import org.zkoss.zk.au.AuRequest;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;

public class AccordionSelectEvent extends Event {

	public static final String ON_ACCORDION_SELECT = "onSelect";

	public AccordionSelectEvent(String name, Component component) {
		super(name);
	}

	public static AccordionSelectEvent getAccordionSelectEvent(AuRequest request) {
		AccordionSelectEvent e = new AccordionSelectEvent(request.getCommand(),
				request.getComponent());
		return e;
	}

}
