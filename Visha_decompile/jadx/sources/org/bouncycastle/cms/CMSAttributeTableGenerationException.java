package org.bouncycastle.cms;

public class CMSAttributeTableGenerationException extends CMSRuntimeException {
    Exception e;

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.e;
    }

    @Override
    public Exception getUnderlyingException() {
        return this.e;
    }

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.e = exc;
    }
}
