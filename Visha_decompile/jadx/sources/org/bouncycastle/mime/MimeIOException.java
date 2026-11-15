package org.bouncycastle.mime;

import java.io.IOException;

public class MimeIOException extends IOException {
    private Throwable cause;

    public MimeIOException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public MimeIOException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
