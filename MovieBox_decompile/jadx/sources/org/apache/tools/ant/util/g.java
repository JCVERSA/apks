package org.apache.tools.ant.util;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class g extends FilterOutputStream {
    public g(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public void close() {
    }
}
