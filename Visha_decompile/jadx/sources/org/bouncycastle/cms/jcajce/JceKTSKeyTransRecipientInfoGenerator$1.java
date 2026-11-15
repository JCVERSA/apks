package org.bouncycastle.cms.jcajce;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;

final class JceKTSKeyTransRecipientInfoGenerator$1 extends CertificateEncodingException {
    final IOException val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JceKTSKeyTransRecipientInfoGenerator$1(String str, IOException iOException) {
        super(str);
        this.val$e = iOException;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
