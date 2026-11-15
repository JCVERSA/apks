package org.mozilla.javascript.tools.debugger;

import defpackage.od3;
import defpackage.qd3;
import defpackage.uw6;
import defpackage.vw6;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ComponentListener;
import java.awt.event.ContainerListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JToolBar;

public class a extends JPanel implements ActionListener {
    public SwingGui a;
    public JComboBox b;
    public List c;
    public JTabbedPane d;
    public JTabbedPane e;
    public vw6 f;
    public vw6 g;
    public uw6 h;
    public qd3 i;
    public od3 j;
    public JSplitPane k;
    public boolean l = false;

    public class C0444a implements ComponentListener {
        public boolean a = true;
        public final JPanel b;
        public final JToolBar c;
        public final JPanel d;
        public final SwingGui e;
        public final JToolBar f;
        public final JPanel g;
        public final JSplitPane h;

        public C0444a(JPanel jPanel, JToolBar jToolBar, JPanel jPanel2, SwingGui swingGui, JToolBar jToolBar2, JPanel jPanel3, JSplitPane jSplitPane) {
            this.b = jPanel;
            this.c = jToolBar;
            this.d = jPanel2;
            this.e = swingGui;
            this.f = jToolBar2;
            this.g = jPanel3;
            this.h = jSplitPane;
        }
    }

    public class b implements ContainerListener {
        public final JPanel a;
        public final JToolBar b;
        public final JToolBar c;
        public final JPanel d;
        public final JSplitPane e;

        public b(JPanel jPanel, JToolBar jToolBar, JToolBar jToolBar2, JPanel jPanel2, JSplitPane jSplitPane) {
            this.a = jPanel;
            this.b = jToolBar;
            this.c = jToolBar2;
            this.d = jPanel2;
            this.e = jSplitPane;
        }
    }

    public a(SwingGui swingGui) {
        this.a = swingGui;
        JPanel jPanel = new JPanel();
        JToolBar jToolBar = new JToolBar();
        jToolBar.setName("Variables");
        jToolBar.setLayout(new GridLayout());
        jToolBar.add(jPanel);
        JPanel jPanel2 = new JPanel();
        jPanel2.setLayout(new GridLayout());
        JPanel jPanel3 = new JPanel();
        jPanel3.setLayout(new GridLayout());
        jPanel2.add(jToolBar);
        JLabel jLabel = new JLabel("Context:");
        JComboBox jComboBox = new JComboBox();
        this.b = jComboBox;
        jComboBox.setLightWeightPopupEnabled(false);
        this.c = Collections.synchronizedList(new ArrayList());
        jLabel.setBorder(this.b.getBorder());
        this.b.addActionListener(this);
        this.b.setActionCommand("ContextSwitch");
        GridBagLayout gridBagLayout = new GridBagLayout();
        jPanel.setLayout(gridBagLayout);
        GridBagConstraints gridBagConstraints = new GridBagConstraints();
        gridBagConstraints.insets.left = 5;
        gridBagConstraints.anchor = 17;
        gridBagConstraints.ipadx = 5;
        gridBagLayout.setConstraints(jLabel, gridBagConstraints);
        jPanel.add(jLabel);
        GridBagConstraints gridBagConstraints2 = new GridBagConstraints();
        gridBagConstraints2.gridwidth = 0;
        gridBagConstraints2.fill = 2;
        gridBagConstraints2.anchor = 17;
        gridBagLayout.setConstraints(this.b, gridBagConstraints2);
        jPanel.add(this.b);
        JTabbedPane jTabbedPane = new JTabbedPane(3);
        this.d = jTabbedPane;
        jTabbedPane.setPreferredSize(new Dimension(500, 300));
        this.f = new vw6(new d());
        JScrollPane jScrollPane = new JScrollPane(this.f);
        jScrollPane.getViewport().setViewSize(new Dimension(5, 2));
        this.d.add("this", jScrollPane);
        vw6 vw6Var = new vw6(new d());
        this.g = vw6Var;
        vw6Var.setAutoResizeMode(4);
        this.g.setPreferredSize(null);
        this.d.add("Locals", new JScrollPane(this.g));
        gridBagConstraints2.weighty = 1.0d;
        gridBagConstraints2.weightx = 1.0d;
        gridBagConstraints2.gridheight = 0;
        gridBagConstraints2.fill = 1;
        gridBagConstraints2.anchor = 17;
        gridBagLayout.setConstraints(this.d, gridBagConstraints2);
        jPanel.add(this.d);
        this.i = new qd3(swingGui);
        this.j = new od3(swingGui);
        this.h = this.i.a;
        JScrollPane jScrollPane2 = new JScrollPane(this.i);
        JToolBar jToolBar2 = new JToolBar();
        jToolBar2.setName("Evaluate");
        JTabbedPane jTabbedPane2 = new JTabbedPane(3);
        this.e = jTabbedPane2;
        jTabbedPane2.add("Watch", jScrollPane2);
        this.e.add("Evaluate", new JScrollPane(this.j));
        this.e.setPreferredSize(new Dimension(500, 300));
        jToolBar2.setLayout(new GridLayout());
        jToolBar2.add(this.e);
        jPanel3.add(jToolBar2);
        this.i.setAutoResizeMode(4);
        JSplitPane jSplitPane = new JSplitPane(1, jPanel2, jPanel3);
        this.k = jSplitPane;
        jSplitPane.setOneTouchExpandable(true);
        SwingGui.setResizeWeight(this.k, 0.5d);
        setLayout(new BorderLayout());
        add(this.k, "Center");
        JSplitPane jSplitPane2 = this.k;
        C0444a c0444a = new C0444a(this, jToolBar, jPanel2, swingGui, jToolBar2, jPanel3, jSplitPane2);
        jPanel2.addContainerListener(new b(this, jToolBar, jToolBar2, jPanel3, jSplitPane2));
        jToolBar.addComponentListener(c0444a);
        jToolBar2.addComponentListener(c0444a);
        c(false);
    }

    public void a() {
        this.l = false;
    }

    public void b() {
        this.l = true;
    }

    public void c(boolean z) {
        this.b.setEnabled(z);
        this.f.setEnabled(z);
        this.g.setEnabled(z);
        this.i.setEnabled(z);
        this.j.setEnabled(z);
    }
}
