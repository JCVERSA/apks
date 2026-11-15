package defpackage;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.event.MouseListener;
import javax.swing.JPanel;
import org.mozilla.javascript.tools.debugger.b;

public class jq3 extends JPanel implements MouseListener {
    public int a = -1;
    public b b;

    public jq3(b bVar) {
        this.b = bVar;
        addMouseListener(this);
        a();
    }

    public void a() {
        yr3 yr3Var = this.b.c;
        Font font = yr3Var.getFont();
        setFont(font);
        FontMetrics fontMetrics = getFontMetrics(font);
        int height = fontMetrics.getHeight();
        int lineCount = yr3Var.getLineCount() + 1;
        String string = Integer.toString(lineCount);
        if (string.length() < 2) {
            string = "99";
        }
        Dimension dimension = new Dimension();
        dimension.width = fontMetrics.stringWidth(string) + 16;
        dimension.height = (lineCount * height) + 100;
        setPreferredSize(dimension);
        setSize(dimension);
    }
}
