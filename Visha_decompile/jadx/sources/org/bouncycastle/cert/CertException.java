package org.bouncycastle.cert;

public class CertException extends Exception {
    private Throwable cause;

    public CertException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public CertException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
