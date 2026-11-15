package com.yandex.mobile.ads.impl;

import defpackage.y45;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class xc {
    private final String a;
    private final byte[] b;
    private final byte[] c;

    public xc(String str, byte[] bArr, byte[] bArr2) {
        y45.j(str, "algorithm");
        y45.j(bArr, "password");
        y45.j(bArr2, "iV");
        this.a = str;
        this.b = bArr;
        this.c = bArr2;
    }

    public final byte[] a(byte[] bArr) throws Exception {
        y45.j(bArr, "input");
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.b, "AES");
        Cipher cipher = Cipher.getInstance(this.a);
        cipher.init(1, secretKeySpec, new IvParameterSpec(this.c));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "doFinal(...)");
        return bArrDoFinal;
    }
}
