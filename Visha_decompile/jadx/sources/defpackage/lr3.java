package defpackage;

import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;

public class lr3 extends JPopupMenu {
    public lr3(yr3 yr3Var) {
        JMenuItem jMenuItem = new JMenuItem("Set Breakpoint");
        add(jMenuItem);
        jMenuItem.addActionListener(yr3Var);
        JMenuItem jMenuItem2 = new JMenuItem("Clear Breakpoint");
        add(jMenuItem2);
        jMenuItem2.addActionListener(yr3Var);
        JMenuItem jMenuItem3 = new JMenuItem("Run");
        add(jMenuItem3);
        jMenuItem3.addActionListener(yr3Var);
    }
}
