package defpackage;

import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.KeyStroke;
import org.mozilla.javascript.tools.debugger.SwingGui;

public class kn6 extends JMenuBar implements ActionListener {
    public List a = Collections.synchronizedList(new ArrayList());
    public List b = Collections.synchronizedList(new ArrayList());
    public SwingGui c;
    public JMenu d;
    public JCheckBoxMenuItem e;
    public JCheckBoxMenuItem f;
    public JCheckBoxMenuItem g;

    public kn6(SwingGui swingGui) {
        String[] strArr;
        String[] strArr2;
        this.c = swingGui;
        String[] strArr3 = {"Open...", "Run...", "", "Exit"};
        String[] strArr4 = {"Open", "Load", "", "Exit"};
        char[] cArr = {'0', 'N', 0, 'X'};
        int[] iArr = {79, 78, 0, 81};
        String[] strArr5 = {"Cut", "Copy", "Paste", "Go to function...", "Go to line..."};
        char[] cArr2 = {'T', 'C', 'P', 'F', 'L'};
        int[] iArr2 = {0, 0, 0, 0, 76};
        String[] strArr6 = {"Break", "Go", "Step Into", "Step Over", "Step Out"};
        char[] cArr3 = {'B', 'G', 'I', 'O', 'T'};
        String[] strArr7 = {"Metal", "Windows", "Motif"};
        char[] cArr4 = {'M', 'W', 'F'};
        int[] iArr3 = {19, 116, 122, 118, 119, 0, 0};
        JMenu jMenu = new JMenu("File");
        jMenu.setMnemonic('F');
        JMenu jMenu2 = new JMenu("Edit");
        jMenu2.setMnemonic('E');
        JMenu jMenu3 = new JMenu("Platform");
        jMenu3.setMnemonic('P');
        JMenu jMenu4 = new JMenu("Debug");
        jMenu4.setMnemonic('D');
        JMenu jMenu5 = jMenu4;
        JMenu jMenu6 = new JMenu("Window");
        this.d = jMenu6;
        jMenu6.setMnemonic('W');
        int i = 0;
        while (i < 4) {
            if (strArr3[i].length() == 0) {
                jMenu.addSeparator();
                strArr2 = strArr3;
                strArr = strArr6;
            } else {
                strArr = strArr6;
                strArr2 = strArr3;
                JMenuItem jMenuItem = new JMenuItem(strArr3[i], cArr[i]);
                jMenuItem.setActionCommand(strArr4[i]);
                jMenuItem.addActionListener(this);
                jMenu.add(jMenuItem);
                int i2 = iArr[i];
                if (i2 != 0) {
                    jMenuItem.setAccelerator(KeyStroke.getKeyStroke(i2, 2));
                }
            }
            i++;
            strArr6 = strArr;
            strArr3 = strArr2;
        }
        String[] strArr8 = strArr6;
        for (int i3 = 0; i3 < 5; i3++) {
            JMenuItem jMenuItem2 = new JMenuItem(strArr5[i3], cArr2[i3]);
            jMenuItem2.addActionListener(this);
            jMenu2.add(jMenuItem2);
            int i4 = iArr2[i3];
            if (i4 != 0) {
                jMenuItem2.setAccelerator(KeyStroke.getKeyStroke(i4, 2));
            }
        }
        for (int i5 = 0; i5 < 3; i5++) {
            JMenuItem jMenuItem3 = new JMenuItem(strArr7[i5], cArr4[i5]);
            jMenuItem3.addActionListener(this);
            jMenu3.add(jMenuItem3);
        }
        int i6 = 0;
        while (i6 < 5) {
            JMenuItem jMenuItem4 = new JMenuItem(strArr8[i6], cArr3[i6]);
            jMenuItem4.addActionListener(this);
            int i7 = iArr3[i6];
            if (i7 != 0) {
                jMenuItem4.setAccelerator(KeyStroke.getKeyStroke(i7, 0));
            }
            if (i6 != 0) {
                this.a.add(jMenuItem4);
            } else {
                this.b.add(jMenuItem4);
            }
            JMenu jMenu7 = jMenu5;
            jMenu7.add(jMenuItem4);
            i6++;
            jMenu5 = jMenu7;
        }
        JMenu jMenu8 = jMenu5;
        JCheckBoxMenuItem jCheckBoxMenuItem = new JCheckBoxMenuItem("Break on Exceptions");
        this.e = jCheckBoxMenuItem;
        jCheckBoxMenuItem.setMnemonic('X');
        this.e.addActionListener(this);
        this.e.setSelected(false);
        jMenu8.add(this.e);
        JCheckBoxMenuItem jCheckBoxMenuItem2 = new JCheckBoxMenuItem("Break on Function Enter");
        this.f = jCheckBoxMenuItem2;
        jCheckBoxMenuItem2.setMnemonic('E');
        this.f.addActionListener(this);
        this.f.setSelected(false);
        jMenu8.add(this.f);
        JCheckBoxMenuItem jCheckBoxMenuItem3 = new JCheckBoxMenuItem("Break on Function Return");
        this.g = jCheckBoxMenuItem3;
        jCheckBoxMenuItem3.setMnemonic('R');
        this.g.addActionListener(this);
        this.g.setSelected(false);
        jMenu8.add(this.g);
        add(jMenu);
        add(jMenu2);
        add(jMenu8);
        JMenu jMenu9 = this.d;
        JMenuItem jMenuItem5 = new JMenuItem("Cascade", 65);
        jMenu9.add(jMenuItem5);
        jMenuItem5.addActionListener(this);
        JMenu jMenu10 = this.d;
        JMenuItem jMenuItem6 = new JMenuItem("Tile", 84);
        jMenu10.add(jMenuItem6);
        jMenuItem6.addActionListener(this);
        this.d.addSeparator();
        JMenu jMenu11 = this.d;
        JMenuItem jMenuItem7 = new JMenuItem("Console", 67);
        jMenu11.add(jMenuItem7);
        jMenuItem7.addActionListener(this);
        add(this.d);
        e(false);
    }

    public void a(String str) {
        boolean z;
        int i;
        int itemCount = this.d.getItemCount();
        if (itemCount == 4) {
            this.d.addSeparator();
            itemCount++;
        }
        JMenuItem item = this.d.getItem(itemCount - 1);
        if (item == null || !item.getText().equals("More Windows...")) {
            z = false;
            i = 5;
        } else {
            z = true;
            i = 6;
        }
        if (!z && itemCount - 4 == 5) {
            JMenu jMenu = this.d;
            JMenuItem jMenuItem = new JMenuItem("More Windows...", 77);
            jMenu.add(jMenuItem);
            jMenuItem.setActionCommand("More Windows...");
            jMenuItem.addActionListener(this);
            return;
        }
        if (itemCount - 4 <= i) {
            if (z) {
                itemCount--;
                this.d.remove(item);
            }
            String shortName = SwingGui.getShortName(str);
            JMenu jMenu2 = this.d;
            StringBuilder sb = new StringBuilder();
            int i2 = itemCount + 44;
            sb.append((char) i2);
            sb.append(" ");
            sb.append(shortName);
            JMenuItem jMenuItem2 = new JMenuItem(sb.toString(), i2);
            jMenu2.add(jMenuItem2);
            if (z) {
                this.d.add(item);
            }
            jMenuItem2.setActionCommand(str);
            jMenuItem2.addActionListener(this);
        }
    }

    public JCheckBoxMenuItem b() {
        return this.f;
    }

    public JCheckBoxMenuItem c() {
        return this.e;
    }

    public JCheckBoxMenuItem d() {
        return this.g;
    }

    public void e(boolean z) {
        for (int i = 0; i != this.a.size(); i++) {
            ((JMenuItem) this.a.get(i)).setEnabled(z);
        }
        for (int i2 = 0; i2 != this.b.size(); i2++) {
            ((JMenuItem) this.b.get(i2)).setEnabled(!z);
        }
    }
}
