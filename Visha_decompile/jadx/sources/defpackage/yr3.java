package defpackage;

import java.awt.Font;
import java.awt.Rectangle;
import java.awt.event.ActionListener;
import java.awt.event.KeyListener;
import java.awt.event.MouseListener;
import javax.swing.JTextArea;
import javax.swing.UIManager;
import javax.swing.event.PopupMenuListener;
import javax.swing.text.BadLocationException;
import org.mozilla.javascript.tools.debugger.b;

public class yr3 extends JTextArea implements ActionListener, PopupMenuListener, KeyListener, MouseListener {
    public b a;
    public lr3 b;

    public yr3(b bVar) {
        this.a = bVar;
        lr3 lr3Var = new lr3(this);
        this.b = lr3Var;
        lr3Var.addPopupMenuListener(this);
        addMouseListener(this);
        addKeyListener(this);
        setFont(new Font("Monospaced", 0, Math.max(12, UIManager.getFont("Label.font").getSize())));
    }

    public void a(int i) {
        if (i >= 0) {
            try {
                int lineOfOffset = getLineOfOffset(i);
                Rectangle rectangleModelToView = modelToView(i);
                if (rectangleModelToView == null) {
                    select(i, i);
                    return;
                }
                try {
                    Rectangle rectangleModelToView2 = modelToView(getLineStartOffset(lineOfOffset + 1));
                    if (rectangleModelToView2 != null) {
                        rectangleModelToView = rectangleModelToView2;
                    }
                } catch (Exception unused) {
                }
                Rectangle viewRect = getParent().getViewRect();
                if (viewRect.y + viewRect.height > rectangleModelToView.y) {
                    select(i, i);
                    return;
                }
                rectangleModelToView.y += (viewRect.height - rectangleModelToView.height) / 2;
                scrollRectToVisible(rectangleModelToView);
                select(i, i);
            } catch (BadLocationException unused2) {
                select(i, i);
            }
        }
    }
}
