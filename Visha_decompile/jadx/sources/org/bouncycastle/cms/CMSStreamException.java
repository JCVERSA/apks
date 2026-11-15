package org.bouncycastle.cms;

import java.io.IOException;

public class CMSStreamException extends IOException {
    private final Throwable underlying;

    public CMSStreamException(String str) {
        super(str);
        this.underlying = null;
    }

    @Override
    public Throwable getCause() {
        return this.underlying;
    }

    public CMSStreamException(String str, Throwable th) {
        super(str);
        this.underlying = th;
    }
}
