package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.g1a;
import defpackage.y45;
import javax.net.ssl.SSLSocket;

public final class wd implements x00.a {
    final String a = "com.google.android.gms.org.conscrypt";

    @Override
    public final boolean a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        String name = sSLSocket.getClass().getName();
        y45.i(name, "getName(...)");
        return g1a.R(name, this.a + Consts.DOT, false, 2, null);
    }

    @Override
    public final xd b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        int i = xd.g;
        return xd.a.b(sSLSocket.getClass());
    }
}
