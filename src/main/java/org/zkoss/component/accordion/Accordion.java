package org.zkoss.component.accordion;

import java.util.Iterator;

import org.zkoss.lang.Objects;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.UiException;
import org.zkoss.zk.ui.event.Deferrable;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.impl.XulElement;

public class Accordion extends XulElement {
	private String containerWidth;

	private String containerHeight;

	private String headerWidth;

	private boolean autoPlay;

	private String activateOn;

	private Integer firstSlide;

	private Integer slideSpeed;

	private boolean pauseOnHover;

	private Integer cycleSpeed;

	private String easing;

	private String theme;

	private boolean rounded;

	private boolean enumerateSlides;

	private boolean linkable;

	transient EventListener _listener;

	public Accordion() {
		init();
	}

	private void init() {
		_listener = new Listener();
	}

	public String getContainerHeight() {
		return containerHeight;
	}

	public void setContainerHeight(String containerHeight) {
		if (!Objects.equals(this.containerHeight, containerHeight)) {
			this.containerHeight = containerHeight;
			smartUpdate("containerHeight", this.containerHeight);
		}
	}

	public String getContainerWidth() {
		return containerWidth;
	}

	public void setContainerWidth(String containerWidth) {
		if (!Objects.equals(this.containerWidth, containerWidth)) {
			this.containerWidth = containerWidth;
			smartUpdate("containerWidth", this.containerWidth);
		}
	}

	public String getHeaderWidth() {
		return headerWidth;
	}

	public void setHeaderWidth(String headerWidth) {
		if (!Objects.equals(this.headerWidth, headerWidth)) {
			this.headerWidth = headerWidth;
			smartUpdate("headerWidth", this.headerWidth);
		}
	}

	public boolean isAutoPlay() {
		return autoPlay;
	}

	public void setAutoPlay(boolean autoPlay) {
		if (this.autoPlay != autoPlay) {
			this.autoPlay = autoPlay;
			smartUpdate("autoPlay", this.autoPlay);
		}
	}

	public String getActivateOn() {
		return activateOn;
	}

	public void setActivateOn(String activateOn) {
		if (!Objects.equals(this.activateOn, activateOn)) {
			this.activateOn = activateOn;
			smartUpdate("activateOn", this.activateOn);
		}
	}

	public Integer getFirstSlide() {
		return firstSlide;
	}

	public void setFirstSlide(Integer firstSlide) {
		if (this.firstSlide != firstSlide) {
			this.firstSlide = firstSlide;
			smartUpdate("firstSlide", this.firstSlide);
		}
	}

	public Integer getSlideSpeed() {
		return slideSpeed;
	}

	public void setSlideSpeed(Integer slideSpeed) {
		if (this.slideSpeed != slideSpeed) {
			this.slideSpeed = slideSpeed;
			smartUpdate("slideSpeed", this.slideSpeed);
		}
	}

	public boolean isPauseOnHover() {
		return pauseOnHover;
	}

	public void setPauseOnHover(boolean pauseOnHover) {
		if (this.pauseOnHover != pauseOnHover) {
			this.pauseOnHover = pauseOnHover;
			smartUpdate("pauseOnHover", this.pauseOnHover);
		}
	}

	public Integer getCycleSpeed() {
		return cycleSpeed;
	}

	public void setCycleSpeed(Integer cycleSpeed) {
		if (this.cycleSpeed != cycleSpeed) {
			this.cycleSpeed = cycleSpeed;
			smartUpdate("cycleSpeed", this.cycleSpeed);
		}
	}

	public String getEasing() {
		return easing;
	}

	public void setEasing(String easing) {
		if (!Objects.equals(this.easing, easing)) {
			this.easing = easing;
			smartUpdate("easing", this.easing);
		}
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		if (!Objects.equals(this.theme, theme)) {
			this.theme = theme;
			smartUpdate("theme", this.theme);
		}
	}

	public boolean isRounded() {
		return rounded;
	}

	public void setRounded(boolean rounded) {
		if (this.rounded != rounded) {
			this.rounded = rounded;
			smartUpdate("rounded", this.rounded);
		}
	}

	public boolean isEnumerateSlides() {
		return enumerateSlides;
	}

	public void setEnumerateSlides(boolean enumerateSlides) {
		if (this.enumerateSlides != enumerateSlides) {
			this.enumerateSlides = enumerateSlides;
			smartUpdate("enumerateSlides", this.enumerateSlides);
		}
	}

	public boolean isLinkable() {
		return linkable;
	}

	public void setLinkable(boolean linkable) {
		if (this.linkable != linkable) {
			this.linkable = linkable;
			smartUpdate("linkable", this.linkable);
		}
	}

	// super//
	protected void renderProperties(org.zkoss.zk.ui.sys.ContentRenderer renderer)
			throws java.io.IOException {
		super.renderProperties(renderer);

		render(renderer, "containerWidth", containerWidth);
		render(renderer, "containerHeight", containerHeight);
		render(renderer, "headerWidth", headerWidth);
		render(renderer, "autoPlay", autoPlay);
		render(renderer, "activateOn", activateOn);
		render(renderer, "firstSlide", firstSlide);
		render(renderer, "slideSpeed", slideSpeed);
		render(renderer, "pauseOnHover", pauseOnHover);
		render(renderer, "cycleSpeed", cycleSpeed);
		render(renderer, "easing", easing);
		render(renderer, "theme", theme);
		render(renderer, "rounded", rounded);
		render(renderer, "enumerateSlides", enumerateSlides);
		render(renderer, "linkable", linkable);
	}

	/**
	 * The default zclass is "z-accordion"
	 */
	public String getZclass() {
		return (this._zclass != null ? this._zclass : "z-accordion");
	}

	public void beforeChildAdded(Component child, Component refChild) {
		if (!(child instanceof Accordionpanel)) {
			throw new UiException("Unsupported child for accordion: " + child);
		}
		super.beforeChildAdded(child, refChild);
	}

	public boolean insertBefore(Component child, Component refChild) {
		if (child instanceof Accordionpanel) {
			if (super.insertBefore(child, refChild)) {
				addAccordionListeners();
				return true;
			}
		}
		return false;
	}

	public void onChildRemoved(Component child) {
		if (child instanceof Accordionpanel) {
			removeAccordionListener(child);
		}
		super.onChildRemoved(child);
	}

	/**
	 * Removes _listener from all the {@link Accordionpanel} instances.
	 * 
	 * @param child
	 */
	private void removeAccordionListeners() {
		if (getChildren() != null) {
			for (Iterator it = this.getChildren().iterator(); it.hasNext();) {
				final Accordionpanel panel = (Accordionpanel) it.next();
				removeAccordionListener(panel);
			}
		}
	}

	/**
	 * Removes _listener from the {@link Accordionpanel} instance.
	 * 
	 * @param child
	 */
	private void removeAccordionListener(Component child) {
		if (child != null) {
			child.removeEventListener(Events.ON_SELECT, _listener);
		}
	}

	/** Adds _listener to all {@link Accordionpanel} instances. */
	private void addAccordionListeners() {
		if (getChildren() != null) {
			for (Iterator it = this.getChildren().iterator(); it.hasNext();) {
				final Accordionpanel panel = (Accordionpanel) it.next();
				panel.addEventListener(
						AccordionSelectEvent.ON_ACCORDION_SELECT, _listener);
			}
		}
	}

	private class Listener implements EventListener, Deferrable {
		public void onEvent(Event event) {
			Events.sendEvent(Accordion.this, event);
		}

		public boolean isDeferrable() {
			return !Events.isListened(Accordion.this,
					AccordionSelectEvent.ON_ACCORDION_SELECT, true);
		}
	}

}
