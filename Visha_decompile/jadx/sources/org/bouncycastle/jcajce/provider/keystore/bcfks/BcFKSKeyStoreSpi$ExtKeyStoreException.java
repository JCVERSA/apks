package org.bouncycastle.jcajce.provider.keystore.bcfks;

import java.security.KeyStoreException;

class BcFKSKeyStoreSpi$ExtKeyStoreException extends KeyStoreException {
    private final Throwable cause;

    public BcFKSKeyStoreSpi$ExtKeyStoreException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
