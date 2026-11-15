package org.bouncycastle.cert.jcajce;

import defpackage.ks0;
import defpackage.l02;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.cert.X509CertificateHolder;

public class JcaX509CertificateConverter {
    public ks0 a;

    public static class ExCertificateException extends CertificateException {
        private Throwable cause;

        public ExCertificateException(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static class ExCertificateParsingException extends CertificateParsingException {
        private Throwable cause;

        public ExCertificateParsingException(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public JcaX509CertificateConverter() {
        this.a = new l02();
        this.a = new l02();
    }

    public X509Certificate a(X509CertificateHolder x509CertificateHolder) throws ExCertificateParsingException, ExCertificateException {
        try {
            return (X509Certificate) this.a.b("X.509").generateCertificate(new ByteArrayInputStream(x509CertificateHolder.getEncoded()));
        } catch (IOException e) {
            throw new ExCertificateParsingException("exception parsing certificate: " + e.getMessage(), e);
        } catch (NoSuchProviderException e2) {
            throw new ExCertificateException("cannot find required provider:" + e2.getMessage(), e2);
        }
    }
}
