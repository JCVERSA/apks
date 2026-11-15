package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.security.cert.CRLException;

class X509CRLObject$X509CRLException extends CRLException {
    private final Throwable cause;

    public X509CRLObject$X509CRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public X509CRLObject$X509CRLException(Throwable th) {
        this.cause = th;
    }
}
