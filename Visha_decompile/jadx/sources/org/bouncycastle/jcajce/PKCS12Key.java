package org.bouncycastle.jcajce;

import defpackage.tu7;

public class PKCS12Key implements PBKDFKey {
    private final char[] password;
    private final boolean useWrongZeroLengthConversion;

    public PKCS12Key(char[] cArr) {
        this(cArr, false);
    }

    @Override
    public String getAlgorithm() {
        return "PKCS12";
    }

    @Override
    public byte[] getEncoded() {
        return (this.useWrongZeroLengthConversion && this.password.length == 0) ? new byte[2] : tu7.a(this.password);
    }

    @Override
    public String getFormat() {
        return "PKCS12";
    }

    public char[] getPassword() {
        return this.password;
    }

    public PKCS12Key(char[] cArr, boolean z) {
        cArr = cArr == null ? new char[0] : cArr;
        char[] cArr2 = new char[cArr.length];
        this.password = cArr2;
        this.useWrongZeroLengthConversion = z;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }
}
