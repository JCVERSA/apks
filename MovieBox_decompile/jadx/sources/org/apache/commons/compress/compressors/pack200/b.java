package org.apache.commons.compress.compressors.pack200;

import java.io.FilterOutputStream;
import java.io.OutputStream;

abstract class b extends FilterOutputStream {

    private final Object f68030a;

    protected b(OutputStream outputStream) {
        super(outputStream);
        this.f68030a = new Object();
    }

    protected b() {
        this(null);
    }
}
