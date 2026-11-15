package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.security.cert.CertificateException;

class CertificateFactory$ExCertificateException extends CertificateException {
    private Throwable cause;

    public CertificateFactory$ExCertificateException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public CertificateFactory$ExCertificateException(Throwable th) {
        this.cause = th;
    }
}
