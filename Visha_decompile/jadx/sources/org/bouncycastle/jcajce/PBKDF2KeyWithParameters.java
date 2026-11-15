package org.bouncycastle.jcajce;

import defpackage.ci;
import defpackage.jv0;
import javax.crypto.interfaces.PBEKey;

public class PBKDF2KeyWithParameters extends PBKDF2Key implements PBEKey {
    private final int iterationCount;
    private final byte[] salt;

    public PBKDF2KeyWithParameters(char[] cArr, jv0 jv0Var, byte[] bArr, int i) {
        super(cArr, jv0Var);
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
}
