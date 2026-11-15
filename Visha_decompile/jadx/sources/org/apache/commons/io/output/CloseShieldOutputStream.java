package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class CloseShieldOutputStream extends ProxyOutputStream {
    public CloseShieldOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public void close() {
        ((FilterOutputStream) this).out = new ClosedOutputStream();
    }
}
