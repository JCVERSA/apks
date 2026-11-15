package defpackage;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

public class rx4 extends ProxySelector {
    public static final List d = Arrays.asList(Proxy.NO_PROXY);
    public final ProxySelector a;
    public final String b;
    public final int c;

    public rx4(ProxySelector proxySelector, String str, int i) {
        this.a = (ProxySelector) ae8.d(proxySelector);
        this.b = (String) ae8.d(str);
        this.c = i;
    }

    public static void a(String str, int i) {
        ProxySelector.setDefault(new rx4(ProxySelector.getDefault(), str, i));
    }

    @Override
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.a.connectFailed(uri, socketAddress, iOException);
    }

    @Override
    public List select(URI uri) {
        return (this.b.equals(uri.getHost()) && this.c == uri.getPort()) ? d : this.a.select(uri);
    }
}
