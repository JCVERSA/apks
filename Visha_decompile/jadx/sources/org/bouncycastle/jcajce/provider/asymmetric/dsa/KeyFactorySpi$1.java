package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import defpackage.rf5;
import java.security.spec.InvalidKeySpecException;

class KeyFactorySpi$1 extends InvalidKeySpecException {
    final rf5 this$0;
    final Exception val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyFactorySpi$1(rf5 rf5Var, String str, Exception exc) {
        super(str);
        this.val$e = exc;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
