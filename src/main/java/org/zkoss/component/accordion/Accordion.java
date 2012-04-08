package org.zkoss.component.accordion;

import org.zkoss.lang.Objects;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.UiException;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.SelectEvent;
import org.zkoss.zul.impl.XulElement;

public class Accordion extends XulElement {
	private String _containerWidth;

	private String _containerHeight;

	private String _headerWidth;

	private boolean _autoPlay;

	private String _activateOn;

	private Integer _firstSlide;

	private Integer _slideSpeed;

	private boolean _pauseOnHover;

	private Integer _cycleSpeed;

	private String _easing;

	private boolean _rounded;

	private boolean _enumerateSlides;

	private boolean _linkable;

	private Accordionpanel _selpanel;

	static {
		addClientEvent(Accordion.class, Events.ON_SELECT, CE_IMPORTANT);
	}

	public Accordion() {
	}

	public String getContainerHeight() {
		return _containerHeight;
	}

	public void setContainerHeight(String containerHeight) {
		if (!Objects.equals(this._containerHeight, containerHeight)) {
			this._containerHeight = containerHeight;
			smartUpdate("containerHeight", this._containerHeight);
		}
	}

	public String getContainerWidth() {
		return _containerWidth;
	}

	public void setContainerWidth(String containerWidth) {
		if (!Objects.equals(this._containerWidth, containerWidth)) {
			this._containerWidth = containerWidth;
			smartUpdate("containerWidth", this._containerWidth);
		}
	}

	public String getHeaderWidth() {
		return _headerWidth;
	}

	public void setHeaderWidth(String headerWidth) {
		if (!Objects.equals(this._headerWidth, headerWidth)) {
			this._headerWidth = headerWidth;
			smartUpdate("headerWidth", this._headerWidth);
		}
	}

	public boolean isAutoPlay() {
		return _autoPlay;
	}

	public void setAutoPlay(boolean autoPlay) {
		if (this._autoPlay != autoPlay) {
			this._autoPlay = autoPlay;
			smartUpdate("autoPlay", this._autoPlay);
		}
	}

	public String getActivateOn() {
		return _activateOn;
	}

	public void setActivateOn(String activateOn) {
		if (!Objects.equals(this._activateOn, activateOn)) {
			this._activateOn = activateOn;
			smartUpdate("activateOn", this._activateOn);
		}
	}

	public Integer getFirstSlide() {
		return _firstSlide;
	}

	public void setFirstSlide(Integer firstSlide) {
		if (this._firstSlide != firstSlide) {
			this._firstSlide = firstSlide;
			smartUpdate("firstSlide", this._firstSlide);
		}
	}

	public Integer getSlideSpeed() {
		return _slideSpeed;
	}

	public void setSlideSpeed(Integer slideSpeed) {
		if (this._slideSpeed != slideSpeed) {
			this._slideSpeed = slideSpeed;
			smartUpdate("slideSpeed", this._slideSpeed);
		}
	}

	public boolean isPauseOnHover() {
		return _pauseOnHover;
	}

	public void setPauseOnHover(boolean pauseOnHover) {
		if (this._pauseOnHover != pauseOnHover) {
			this._pauseOnHover = pauseOnHover;
			smartUpdate("pauseOnHover", this._pauseOnHover);
		}
	}

	public Integer getCycleSpeed() {
		return _cycleSpeed;
	}

	public void setCycleSpeed(Integer cycleSpeed) {
		if (this._cycleSpeed != cycleSpeed) {
			this._cycleSpeed = cycleSpeed;
			smartUpdate("cycleSpeed", this._cycleSpeed);
		}
	}

	public String getEasing() {
		return _easing;
	}

	public void setEasing(String easing) {
		if (!Objects.equals(this._easing, easing)) {
			this._easing = easing;
			smartUpdate("easing", this._easing);
		}
	}

	public boolean isRounded() {
		return _rounded;
	}

	public void setRounded(boolean rounded) {
		if (this._rounded != rounded) {
			this._rounded = rounded;
			smartUpdate("rounded", this._rounded);
		}
	}

	public boolean isEnumerateSlides() {
		return _enumerateSlides;
	}

	public void setEnumerateSlides(boolean enumerateSlides) {
		if (this._enumerateSlides != enumerateSlides) {
			this._enumerateSlides = enumerateSlides;
			smartUpdate("enumerateSlides", this._enumerateSlides);
		}
	}

	public boolean isLinkable() {
		return _linkable;
	}

	public void setLinkable(boolean linkable) {
		if (this._linkable != linkable) {
			this._linkable = linkable;
			smartUpdate("linkable", this._linkable);
		}
	}

	/**
	 * Returns the selected panel.
	 */
	public Accordionpanel getSelectedpanel() {
		return _selpanel;
	}

	/**
	 * Sets the selected panel.
	 */
	public void setSelectedPanel(Accordionpanel panel) {
		selectPanelDirectly(panel, false);
	}

	/** Sets the selected panel. */
	/* packge */void selectPanelDirectly(Accordionpanel panel, boolean byClient) {
		if (panel == null)
			throw new IllegalArgumentException("null panel");
		if (panel.getAccordion() != null && panel.getAccordion() != this)
			throw new UiException("Not my child: " + panel);
		if (panel != _selpanel) {
			if (_selpanel != null) {
				_selpanel.setSelectedDirectly(false);
			}
			_selpanel = panel;
			_selpanel.setSelectedDirectly(true);
			if (!byClient)
				smartUpdate("selectedpanel", _selpanel);
		}
	}

	// super//
	protected void renderProperties(org.zkoss.zk.ui.sys.ContentRenderer renderer)
			throws java.io.IOException {
		super.renderProperties(renderer);

		render(renderer, "containerWidth", _containerWidth);
		render(renderer, "containerHeight", _containerHeight);
		render(renderer, "headerWidth", _headerWidth);
		render(renderer, "autoPlay", _autoPlay);
		render(renderer, "activateOn", _activateOn);
		render(renderer, "firstSlide", _firstSlide);
		render(renderer, "slideSpeed", _slideSpeed);
		render(renderer, "pauseOnHover", _pauseOnHover);
		render(renderer, "cycleSpeed", _cycleSpeed);
		render(renderer, "easing", _easing);
		render(renderer, "rounded", _rounded);
		render(renderer, "enumerateSlides", _enumerateSlides);
		render(renderer, "linkable", _linkable);
		render(renderer, "selectedpanel", _selpanel);
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
		int _count = this.getChildren().size() + 1;
		if (_firstSlide.intValue() > 0) {
			if (_firstSlide.intValue() == _count) {
				selectPanelDirectly((Accordionpanel) child, false);
			}
		} else {
			if (this.getChildren().size() > 0) {
				selectPanelDirectly((Accordionpanel) this.getChildren().get(0),
						false);
			}
		}
	}
	
	public void beforeChildRemoved(Component child) {
		Component p = child.getPreviousSibling();
		if (p!=null) {
			selectPanelDirectly((Accordionpanel) p, false);
		} else {
			p = child.getNextSibling();
			if (p!=null) {
				selectPanelDirectly((Accordionpanel) p, false);
			}
		}
		if (p!=null) {
			Integer i = Integer.valueOf(this.getChildren().indexOf(p)+1);
			setFirstSlide(i);
		} else {
			setFirstSlide(Integer.valueOf(0));
		}
		super.beforeChildRemoved(child);
	}

	public void onChildRemoved(Component child) {
		super.onChildRemoved(child);
	}

	public void service(org.zkoss.zk.au.AuRequest request, boolean everError) {
		final String cmd = request.getCommand();
		if (cmd.equals(Events.ON_SELECT)) {
			SelectEvent evt = SelectEvent.getSelectEvent(request);
			if (evt.getSelectedItems().size() != 1) {
				throw new IllegalArgumentException("Must be one selected panel");
			}
			_selpanel = (Accordionpanel) evt.getSelectedItems().iterator()
					.next();
			Events.postEvent(evt);
		} else
			super.service(request, everError);
	}

}
