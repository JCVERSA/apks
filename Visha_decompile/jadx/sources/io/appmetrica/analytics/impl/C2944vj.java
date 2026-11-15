package io.appmetrica.analytics.impl;

public final class C2944vj implements Xa {
    public final String a;
    public final byte[] b;

    public C2944vj(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }

    @Override
    public final void a(Ya ya) {
        ya.setSessionExtra(this.a, this.b);
    }
}
