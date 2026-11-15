package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.table.AbstractTableModel;
import org.mozilla.javascript.tools.debugger.SwingGui;

public class uw6 extends AbstractTableModel {
    public SwingGui a;
    public List b = Collections.synchronizedList(new ArrayList());
    public List c = Collections.synchronizedList(new ArrayList());

    public uw6(SwingGui swingGui) {
        this.a = swingGui;
        this.b.add("");
        this.c.add("");
    }
}
