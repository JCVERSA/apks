package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.security.cert.CertificateEncodingException;

class X509CertificateObject$X509CertificateEncodingException extends CertificateEncodingException {
    private final Throwable cause;

    public X509CertificateObject$X509CertificateEncodingException(Throwable th) {
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
