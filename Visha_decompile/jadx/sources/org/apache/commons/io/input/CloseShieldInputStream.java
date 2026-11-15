package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.InputStream;

public class CloseShieldInputStream extends ProxyInputStream {
    public CloseShieldInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override
    public void close() {
        ((FilterInputStream) this).in = new ClosedInputStream();
    }
}
