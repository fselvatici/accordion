package ctrl;

import org.zkoss.component.accordion.Accordion;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.ForwardEvent;
import org.zkoss.zk.ui.event.MouseEvent;
import org.zkoss.zk.ui.util.GenericForwardComposer;

public class DemoWindowComposer extends GenericForwardComposer {
	
	private Accordion myComp;
	
	public void doAfterCompose(Component comp) throws Exception {
		super.doAfterCompose(comp);
		myComp.setText("Hello ZK Component!! Please click me.");
	}
	
	public void onClick$myComp (ForwardEvent event) {
		MouseEvent mouseEvent = (MouseEvent) event.getOrigin();
		alert("You listen onClick: " + mouseEvent.getTarget());
	}
}