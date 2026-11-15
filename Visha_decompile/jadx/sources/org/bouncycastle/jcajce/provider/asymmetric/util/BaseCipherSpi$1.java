package org.bouncycastle.jcajce.provider.asymmetric.util;

import defpackage.r90;
import java.security.InvalidKeyException;
import javax.crypto.BadPaddingException;

class BaseCipherSpi$1 extends InvalidKeyException {
    final r90 this$0;
    final BadPaddingException val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseCipherSpi$1(r90 r90Var, String str, BadPaddingException badPaddingException) {
        super(str);
        this.val$e = badPaddingException;
    }

    @Override
    public synchronized Throwable getCause() {
        return this.val$e;
    }
}
