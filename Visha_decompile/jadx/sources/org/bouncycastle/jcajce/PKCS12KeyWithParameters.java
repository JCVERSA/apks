package org.bouncycastle.jcajce;

import defpackage.ci;
import javax.crypto.interfaces.PBEKey;

public class PKCS12KeyWithParameters extends PKCS12Key implements PBEKey {
    private final int iterationCount;
    private final byte[] salt;

    public PKCS12KeyWithParameters(char[] cArr, boolean z, byte[] bArr, int i) {
        super(cArr, z);
        this.salt = ci.f(bArr);
        this.iterationCount = i;
    }

    @Override
    public int getIterationCount() {
        return this.iterationCount;
    }

    @Override
    public byte[] getSalt() {
        return this.salt;
    }

    public PKCS12KeyWithParameters(char[] cArr, byte[] bArr, int i) {
        super(cArr);
        this.salt = ci.f(bArr);
        this.iterationCount = i;
    }
}
