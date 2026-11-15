package defpackage;

import java.awt.event.ActionListener;
import java.io.InputStream;
import java.io.PrintStream;
import javax.swing.JInternalFrame;
import javax.swing.JScrollPane;
import javax.swing.event.InternalFrameAdapter;
import org.mozilla.javascript.tools.shell.ConsoleTextArea;

public class c65 extends JInternalFrame implements ActionListener {
    public ConsoleTextArea a;

    public class a extends InternalFrameAdapter {
        public a() {
        }
    }

    public c65(String str) {
        super(str, true, false, true, true);
        ConsoleTextArea consoleTextArea = new ConsoleTextArea(null);
        this.a = consoleTextArea;
        consoleTextArea.setRows(24);
        this.a.setColumns(80);
        setContentPane(new JScrollPane(this.a));
        pack();
        addInternalFrameListener(new a());
    }

    public PrintStream a() {
        return this.a.getErr();
    }

    public InputStream b() {
        return this.a.getIn();
    }

    public PrintStream c() {
        return this.a.getOut();
    }
}
