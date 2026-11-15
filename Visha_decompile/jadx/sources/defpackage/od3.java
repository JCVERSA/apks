package defpackage;

import java.awt.Font;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JTextArea;
import javax.swing.UIManager;
import javax.swing.event.DocumentListener;
import javax.swing.text.Document;
import org.mozilla.javascript.tools.debugger.SwingGui;

public class od3 extends JTextArea implements KeyListener, DocumentListener {
    public SwingGui a;
    public int d;
    public int c = -1;
    public List b = Collections.synchronizedList(new ArrayList());

    public od3(SwingGui swingGui) {
        this.a = swingGui;
        Document document = getDocument();
        document.addDocumentListener(this);
        addKeyListener(this);
        setLineWrap(true);
        setFont(new Font("Monospaced", 0, Math.max(12, UIManager.getFont("Label.font").getSize())));
        append("% ");
        this.d = document.getLength();
    }
}
