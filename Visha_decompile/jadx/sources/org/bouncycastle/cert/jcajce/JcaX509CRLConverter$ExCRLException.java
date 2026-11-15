package org.bouncycastle.cert.jcajce;

import java.security.cert.CRLException;

class JcaX509CRLConverter$ExCRLException extends CRLException {
    private Throwable cause;

    public JcaX509CRLConverter$ExCRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
