package com.yandex.mobile.ads.impl;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;

public final class vd1 extends ProxySelector {
    public static final vd1 a = new vd1();

    private vd1() {
    }

    @Override
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override
    public final List<Proxy> select(URI uri) {
        if (uri != null) {
            return defpackage.x71.e(Proxy.NO_PROXY);
        }
        throw new IllegalArgumentException("uri must not be null");
    }
}
