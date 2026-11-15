package org.bouncycastle.crypto.util;

import java.io.IOException;

final class DerUtil$1 extends IllegalStateException {
    final IOException val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DerUtil$1(String str, IOException iOException) {
        super(str);
        this.val$e = iOException;
    }

    @Override
    public Throwable getCause() {
        return this.val$e;
    }
}
