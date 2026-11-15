package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.InvalidKeyException;

public class BaseWrapCipher$InvalidKeyOrParametersException extends InvalidKeyException {
    private final Throwable cause;

    public BaseWrapCipher$InvalidKeyOrParametersException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
