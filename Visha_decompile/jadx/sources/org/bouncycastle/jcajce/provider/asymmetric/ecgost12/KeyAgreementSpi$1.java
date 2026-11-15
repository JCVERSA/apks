package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import defpackage.of5;
import java.security.InvalidKeyException;

class KeyAgreementSpi$1 extends InvalidKeyException {
    final of5 this$0;
    final Exception val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyAgreementSpi$1(of5 of5Var, String str, Exception exc) {
        super(str);
        this.val$e = exc;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
