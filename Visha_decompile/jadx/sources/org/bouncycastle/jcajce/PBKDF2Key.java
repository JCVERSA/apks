package org.bouncycastle.jcajce;

import defpackage.ci;
import defpackage.jv0;

public class PBKDF2Key implements PBKDFKey {
    private final jv0 converter;
    private final char[] password;

    public PBKDF2Key(char[] cArr, jv0 jv0Var) {
        this.password = ci.g(cArr);
        this.converter = jv0Var;
    }

    @Override
    public String getAlgorithm() {
        return "PBKDF2";
    }

    @Override
    public byte[] getEncoded() {
        return this.converter.convert(this.password);
    }

    @Override
    public String getFormat() {
        return this.converter.getType();
    }

    public char[] getPassword() {
        return this.password;
    }
}
