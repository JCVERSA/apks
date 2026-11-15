package org.mozilla.javascript.tools.shell;

import java.io.OutputStream;
import javax.swing.SwingUtilities;

public class a extends OutputStream {
    public ConsoleTextArea b;
    public StringBuffer c = new StringBuffer();

    public a(ConsoleTextArea consoleTextArea) {
        this.b = consoleTextArea;
    }

    public final void b() {
        String string = this.c.toString();
        this.c.setLength(0);
        SwingUtilities.invokeLater(new ConsoleWrite(this.b, string));
    }

    @Override
    public void close() {
        flush();
    }

    @Override
    public synchronized void flush() {
        if (this.c.length() > 0) {
            b();
        }
    }

    @Override
    public synchronized void write(int i) {
        this.c.append((char) i);
        if (i == 10) {
            b();
        }
    }
}
