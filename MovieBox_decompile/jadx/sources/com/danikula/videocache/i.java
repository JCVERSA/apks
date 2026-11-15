package com.danikula.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

class i extends ProxySelector {

    private static final List f23390d = Arrays.asList(Proxy.NO_PROXY);

    private final ProxySelector f23391a;

    private final String f23392b;

    private final int f23393c;

    i(ProxySelector proxySelector, String str, int i10) {
        this.f23391a = (ProxySelector) l.c(proxySelector);
        this.f23392b = (String) l.c(str);
        this.f23393c = i10;
    }

    static void a(String str, int i10) {
        ProxySelector.setDefault(new i(ProxySelector.getDefault(), str, i10));
    }

    @Override
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f23391a.connectFailed(uri, socketAddress, iOException);
    }

    @Override
    public List select(URI uri) {
        if (this.f23392b.equals(uri.getHost()) && this.f23393c == uri.getPort()) {
            return f23390d;
        }
        try {
            List<Proxy> listSelect = this.f23391a.select(uri);
            return listSelect != null ? listSelect : f23390d;
        } catch (Throwable unused) {
            return f23390d;
        }
    }
}
