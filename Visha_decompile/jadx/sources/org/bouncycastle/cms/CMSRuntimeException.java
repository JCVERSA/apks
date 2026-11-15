package org.bouncycastle.cms;

public class CMSRuntimeException extends RuntimeException {
    Exception e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.e;
    }

    public Exception getUnderlyingException() {
        return this.e;
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.e = exc;
    }
}
