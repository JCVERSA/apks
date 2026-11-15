package org.bouncycastle.x509;

import java.security.cert.CRLException;

class X509V2CRLGenerator$ExtCRLException extends CRLException {
    Throwable cause;

    public X509V2CRLGenerator$ExtCRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
