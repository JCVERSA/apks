package org.bouncycastle.jcajce.provider.keystore.bc;

import java.security.KeyStoreException;

class BcKeyStoreSpi$BCKeyStoreException extends KeyStoreException {
    private final Exception cause;

    public BcKeyStoreSpi$BCKeyStoreException(String str, Exception exc) {
        super(str);
        this.cause = exc;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
