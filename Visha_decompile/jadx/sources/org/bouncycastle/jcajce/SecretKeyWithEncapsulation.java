package org.bouncycastle.jcajce;

import defpackage.ci;
import javax.crypto.SecretKey;

public final class SecretKeyWithEncapsulation implements SecretKey {
    private final byte[] encapsulation;
    private final SecretKey secretKey;

    public SecretKeyWithEncapsulation(SecretKey secretKey, byte[] bArr) {
        this.secretKey = secretKey;
        this.encapsulation = ci.f(bArr);
    }

    public boolean equals(Object obj) {
        return this.secretKey.equals(obj);
    }

    @Override
    public String getAlgorithm() {
        return this.secretKey.getAlgorithm();
    }

    public byte[] getEncapsulation() {
        return ci.f(this.encapsulation);
    }

    @Override
    public byte[] getEncoded() {
        return this.secretKey.getEncoded();
    }

    @Override
    public String getFormat() {
        return this.secretKey.getFormat();
    }

    public int hashCode() {
        return this.secretKey.hashCode();
    }
}
