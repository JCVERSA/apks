package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Route;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

public final class l {

    private final Address f39700a;

    private final com.squareup.okhttp.internal.f f39701b;

    private Proxy f39702c;

    private InetSocketAddress f39703d;

    private int f39705f;

    private int f39707h;

    private List f39704e = Collections.emptyList();

    private List f39706g = Collections.emptyList();

    private final List f39708i = new ArrayList();

    public l(Address address, com.squareup.okhttp.internal.f fVar) {
        this.f39700a = address;
        this.f39701b = fVar;
        l(address.url(), address.getProxy());
    }

    static String b(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean d() {
        return this.f39707h < this.f39706g.size();
    }

    private boolean e() {
        return !this.f39708i.isEmpty();
    }

    private boolean f() {
        return this.f39705f < this.f39704e.size();
    }

    private InetSocketAddress h() throws SocketException {
        if (d()) {
            List list = this.f39706g;
            int i10 = this.f39707h;
            this.f39707h = i10 + 1;
            return (InetSocketAddress) list.get(i10);
        }
        throw new SocketException("No route to " + this.f39700a.getUriHost() + "; exhausted inet socket addresses: " + this.f39706g);
    }

    private Route i() {
        return (Route) this.f39708i.remove(0);
    }

    private Proxy j() throws SocketException, UnknownHostException {
        if (f()) {
            List list = this.f39704e;
            int i10 = this.f39705f;
            this.f39705f = i10 + 1;
            Proxy proxy = (Proxy) list.get(i10);
            k(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f39700a.getUriHost() + "; exhausted proxy configurations: " + this.f39704e);
    }

    private void k(Proxy proxy) throws SocketException, UnknownHostException {
        String uriHost;
        int uriPort;
        this.f39706g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            uriHost = this.f39700a.getUriHost();
            uriPort = this.f39700a.getUriPort();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            uriHost = b(inetSocketAddress);
            uriPort = inetSocketAddress.getPort();
        }
        if (uriPort < 1 || uriPort > 65535) {
            throw new SocketException("No route to " + uriHost + ":" + uriPort + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f39706g.add(InetSocketAddress.createUnresolved(uriHost, uriPort));
        } else {
            List<InetAddress> listLookup = this.f39700a.getDns().lookup(uriHost);
            int size = listLookup.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f39706g.add(new InetSocketAddress(listLookup.get(i10), uriPort));
            }
        }
        this.f39707h = 0;
    }

    private void l(HttpUrl httpUrl, Proxy proxy) {
        if (proxy != null) {
            this.f39704e = Collections.singletonList(proxy);
        } else {
            this.f39704e = new ArrayList();
            List<Proxy> listSelect = this.f39700a.getProxySelector().select(httpUrl.uri());
            if (listSelect != null) {
                this.f39704e.addAll(listSelect);
            }
            List list = this.f39704e;
            Proxy proxy2 = Proxy.NO_PROXY;
            list.removeAll(Collections.singleton(proxy2));
            this.f39704e.add(proxy2);
        }
        this.f39705f = 0;
    }

    public void a(Route route, IOException iOException) {
        if (route.getProxy().type() != Proxy.Type.DIRECT && this.f39700a.getProxySelector() != null) {
            this.f39700a.getProxySelector().connectFailed(this.f39700a.url().uri(), route.getProxy().address(), iOException);
        }
        this.f39701b.b(route);
    }

    public boolean c() {
        return d() || f() || e();
    }

    public Route g() throws SocketException {
        if (!d()) {
            if (!f()) {
                if (e()) {
                    return i();
                }
                throw new NoSuchElementException();
            }
            this.f39702c = j();
        }
        InetSocketAddress inetSocketAddressH = h();
        this.f39703d = inetSocketAddressH;
        Route route = new Route(this.f39700a, this.f39702c, inetSocketAddressH);
        if (!this.f39701b.c(route)) {
            return route;
        }
        this.f39708i.add(route);
        return g();
    }
}
