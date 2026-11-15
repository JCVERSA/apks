package com.transsion.http.impl;

public abstract class StringCallback extends q {
    public static String w(byte[] bArr, String str) {
        String str2 = bArr == null ? null : new String(bArr, str);
        return (str2 == null || !str2.startsWith("\ufeff")) ? str2 : str2.substring(1);
    }

    @Override
    public void m(int i10, byte[] bArr, Throwable th2) {
        o oVar = new o(this, bArr, i10, th2);
        if (k() || j()) {
            oVar.run();
        } else {
            new Thread(oVar).start();
        }
    }

    @Override
    public void s(int i10, byte[] bArr) {
        l lVar = new l(this, bArr, i10);
        if (k() || j()) {
            lVar.run();
        } else {
            new Thread(lVar).start();
        }
    }

    public abstract void x(int i10, String str, Throwable th2);

    public abstract void y(int i10, String str);
}
