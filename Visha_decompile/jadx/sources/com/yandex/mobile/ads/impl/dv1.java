package com.yandex.mobile.ads.impl;

import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class dv1 implements tv.a {
    private final String a;
    private final SSLSocketFactory b;
    private final boolean c;

    public dv1(String str, SSLSocketFactory sSLSocketFactory, boolean z) {
        y45.j(str, "userAgent");
        this.a = str;
        this.b = sSLSocketFactory;
        this.c = z;
    }

    @Override
    public final tv a() {
        if (!this.c) {
            return new av1(this.a, new uh0(), this.b);
        }
        int i = ge1.c;
        return new je1(ge1.a(8000, 8000, this.b), this.a, new uh0());
    }
}
