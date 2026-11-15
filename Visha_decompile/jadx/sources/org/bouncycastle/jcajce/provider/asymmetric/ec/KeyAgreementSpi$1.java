package org.bouncycastle.jcajce.provider.asymmetric.ec;

import defpackage.pf5;
import java.security.InvalidKeyException;

class KeyAgreementSpi$1 extends InvalidKeyException {
    final pf5 this$0;
    final Exception val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyAgreementSpi$1(pf5 pf5Var, String str, Exception exc) {
        super(str);
        this.val$e = exc;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
