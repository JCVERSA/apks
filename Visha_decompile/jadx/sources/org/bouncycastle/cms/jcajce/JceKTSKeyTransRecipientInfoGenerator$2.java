package org.bouncycastle.cms.jcajce;

import java.io.IOException;

final class JceKTSKeyTransRecipientInfoGenerator$2 extends IllegalArgumentException {
    final IOException val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JceKTSKeyTransRecipientInfoGenerator$2(String str, IOException iOException) {
        super(str);
        this.val$e = iOException;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
