package org.bouncycastle.cert.path;

public class CertPathValidationException extends Exception {
    private final Exception cause;

    public CertPathValidationException(String str) {
        this(str, null);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public CertPathValidationException(String str, Exception exc) {
        super(str);
        this.cause = exc;
    }
}
