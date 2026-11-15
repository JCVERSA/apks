package com.transsion.http.impl;

import defpackage.ds4;
import java.util.Map;

public abstract class StringCallback extends ds4 {
    public StringCallback(boolean z) {
        super(z);
    }

    public static String C(byte[] bArr, String str) {
        String str2 = bArr == null ? null : new String(bArr, str);
        return (str2 == null || !str2.startsWith("\ufeff")) ? str2 : str2.substring(1);
    }

    public abstract void D(int i, String str, Throwable th);

    public abstract void E(int i, String str);

    @Override
    public void o(int i, byte[] bArr, Throwable th) {
        o oVar = new o(this, bArr, i, th);
        if (m() || l()) {
            oVar.run();
        } else {
            new Thread(oVar).start();
        }
    }

    @Override
    public void s(Map map) {
    }

    @Override
    public void v(int i, byte[] bArr) {
        l lVar = new l(this, bArr, i);
        if (m() || l()) {
            lVar.run();
        } else {
            new Thread(lVar).start();
        }
    }
}
