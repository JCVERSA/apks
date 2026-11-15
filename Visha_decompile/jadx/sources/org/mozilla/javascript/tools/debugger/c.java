package org.mozilla.javascript.tools.debugger;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.MouseAdapter;
import java.util.Arrays;
import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

public class c extends JDialog implements ActionListener {
    public String a;
    public JList b;
    public SwingGui c;
    public JButton d;
    public JButton e;

    public class a extends KeyAdapter {
        public a() {
        }
    }

    public class b extends MouseAdapter {
        public b() {
        }
    }

    public c(SwingGui swingGui, String str, String str2) {
        super(swingGui, str, true);
        this.c = swingGui;
        this.e = new JButton("Cancel");
        this.d = new JButton("Select");
        this.e.addActionListener(this);
        this.d.addActionListener(this);
        getRootPane().setDefaultButton(this.d);
        JList jList = new JList(new DefaultListModel());
        this.b = jList;
        DefaultListModel model = jList.getModel();
        model.clear();
        String[] strArrFunctionNames = swingGui.dim.functionNames();
        Arrays.sort(strArrFunctionNames);
        for (String str3 : strArrFunctionNames) {
            model.addElement(str3);
        }
        this.b.setSelectedIndex(0);
        this.d.setEnabled(strArrFunctionNames.length > 0);
        this.b.setSelectionMode(1);
        this.b.addMouseListener(new b());
        JScrollPane jScrollPane = new JScrollPane(this.b);
        jScrollPane.setPreferredSize(new Dimension(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, 240));
        jScrollPane.setMinimumSize(new Dimension(250, 80));
        jScrollPane.setAlignmentX(0.0f);
        JPanel jPanel = new JPanel();
        jPanel.setLayout(new BoxLayout(jPanel, 1));
        JLabel jLabel = new JLabel(str2);
        jLabel.setLabelFor(this.b);
        jPanel.add(jLabel);
        jPanel.add(Box.createRigidArea(new Dimension(0, 5)));
        jPanel.add(jScrollPane);
        jPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        JPanel jPanel2 = new JPanel();
        jPanel2.setLayout(new BoxLayout(jPanel2, 0));
        jPanel2.setBorder(BorderFactory.createEmptyBorder(0, 10, 10, 10));
        jPanel2.add(Box.createHorizontalGlue());
        jPanel2.add(this.e);
        jPanel2.add(Box.createRigidArea(new Dimension(10, 0)));
        jPanel2.add(this.d);
        Container contentPane = getContentPane();
        contentPane.add(jPanel, "Center");
        contentPane.add(jPanel2, "South");
        pack();
        addKeyListener(new a());
    }

    public String a(Component component) {
        this.a = null;
        setLocationRelativeTo(component);
        setVisible(true);
        return this.a;
    }
}
