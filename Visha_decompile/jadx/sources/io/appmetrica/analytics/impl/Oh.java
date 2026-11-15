package io.appmetrica.analytics.impl;

public final class Oh implements Runnable {
    public final String a;
    public final byte[] b;
    public final Yh c;

    public Oh(Yh yh, String str, byte[] bArr) {
        this.c = yh;
        this.a = str;
        this.b = bArr;
    }

    @Override
    public final void run() {
        Yh yh = this.c;
        Yh.a(yh.a, yh.d, yh.e).setSessionExtra(this.a, this.b);
    }
}
