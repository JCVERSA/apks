package org.mozilla.javascript.tools.debugger;

import defpackage.jq3;
import defpackage.yr3;
import java.awt.event.ActionListener;
import javax.swing.JComponent;
import javax.swing.JInternalFrame;
import javax.swing.JScrollPane;
import javax.swing.text.BadLocationException;

public class b extends JInternalFrame implements ActionListener {
    public SwingGui a;
    public Dim.SourceInfo b;
    public yr3 c;
    public jq3 d;
    public JScrollPane e;
    public int f;

    public b(SwingGui swingGui, Dim.SourceInfo sourceInfo) {
        super(SwingGui.getShortName(sourceInfo.url()), true, true, true, true);
        this.a = swingGui;
        this.b = sourceInfo;
        e();
        this.f = -1;
        yr3 yr3Var = new yr3(this);
        this.c = yr3Var;
        yr3Var.setRows(24);
        this.c.setColumns(80);
        this.e = new JScrollPane();
        this.d = new jq3(this);
        this.e.setViewportView(this.c);
        this.e.setRowHeaderView(this.d);
        setContentPane(this.e);
        pack();
        d(sourceInfo);
        this.c.a(0);
    }

    public int a(int i) {
        try {
            return this.c.getLineStartOffset(i);
        } catch (BadLocationException unused) {
            return -1;
        }
    }

    public String b() {
        return this.b.url();
    }

    public void c(int i) {
        this.c.a(i);
        this.f = i;
        this.d.repaint();
    }

    public void d(Dim.SourceInfo sourceInfo) {
        this.b = sourceInfo;
        String strSource = sourceInfo.source();
        if (!this.c.getText().equals(strSource)) {
            this.c.setText(strSource);
            int i = this.f;
            if (i == -1) {
                i = 0;
            }
            this.c.a(i);
        }
        this.d.a();
        this.d.repaint();
    }

    public final void e() {
        int i = 1;
        int componentCount = getComponentCount() - 1;
        if (componentCount <= 1) {
            if (componentCount < 0) {
                return;
            } else {
                i = componentCount;
            }
        }
        JComponent component = getComponent(i);
        if (component == null || !(component instanceof JComponent)) {
            return;
        }
        component.setToolTipText(b());
    }
}
