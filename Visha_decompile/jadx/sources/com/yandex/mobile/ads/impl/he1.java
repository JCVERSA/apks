package com.yandex.mobile.ads.impl;

import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class he1 {
    private final int a;
    private final int b;
    private final SSLSocketFactory c;

    public he1(int i, int i2, SSLSocketFactory sSLSocketFactory) {
        this.a = i;
        this.b = i2;
        this.c = sSLSocketFactory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he1)) {
            return false;
        }
        he1 he1Var = (he1) obj;
        return this.a == he1Var.a && this.b == he1Var.b && y45.e(this.c, he1Var.c);
    }

    public final int hashCode() {
        int iA = dy1.a(this.b, Integer.hashCode(this.a) * 31, 31);
        SSLSocketFactory sSLSocketFactory = this.c;
        return iA + (sSLSocketFactory == null ? 0 : sSLSocketFactory.hashCode());
    }

    public final String toString() {
        return "OkHttpConfiguration(connectionTimeoutMs=" + this.a + ", readTimeoutMs=" + this.b + ", sslSocketFactory=" + this.c + ")";
    }
}
