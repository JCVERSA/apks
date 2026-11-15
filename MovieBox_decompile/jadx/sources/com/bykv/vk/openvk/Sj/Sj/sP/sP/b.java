package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

class b extends ProxySelector {

    private static final List f19627d = Collections.singletonList(Proxy.NO_PROXY);

    private final ProxySelector f19628a = ProxySelector.getDefault();

    private final String f19629b;

    private final int f19630c;

    private b(String str, int i10) {
        this.f19629b = str;
        this.f19630c = i10;
    }

    static void a(String str, int i10) {
        ProxySelector.setDefault(new b(str, i10));
    }

    @Override
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f19628a.connectFailed(uri, socketAddress, iOException);
    }

    @Override
    public List select(URI uri) {
        if (uri != null) {
            return (this.f19629b.equalsIgnoreCase(uri.getHost()) && this.f19630c == uri.getPort()) ? f19627d : this.f19628a.select(uri);
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
