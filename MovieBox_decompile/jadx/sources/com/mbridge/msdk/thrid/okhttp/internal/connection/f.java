package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
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

public final class f {

    private final com.mbridge.msdk.thrid.okhttp.a f37126a;

    private final d f37127b;

    private final com.mbridge.msdk.thrid.okhttp.d f37128c;

    private final n f37129d;

    private int f37131f;

    private List<Proxy> f37130e = Collections.emptyList();

    private List<InetSocketAddress> f37132g = Collections.emptyList();

    private final List<a0> f37133h = new ArrayList();

    public static final class a {

        private final List<a0> f37134a;

        private int f37135b = 0;

        a(List<a0> list) {
            this.f37134a = list;
        }

        public List<a0> a() {
            return new ArrayList(this.f37134a);
        }

        public boolean b() {
            return this.f37135b < this.f37134a.size();
        }

        public a0 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<a0> list = this.f37134a;
            int i10 = this.f37135b;
            this.f37135b = i10 + 1;
            return list.get(i10);
        }
    }

    public f(com.mbridge.msdk.thrid.okhttp.a aVar, d dVar, com.mbridge.msdk.thrid.okhttp.d dVar2, n nVar) {
        this.f37126a = aVar;
        this.f37127b = dVar;
        this.f37128c = dVar2;
        this.f37129d = nVar;
        a(aVar.k(), aVar.f());
    }

    private boolean b() {
        return this.f37131f < this.f37130e.size();
    }

    private Proxy d() throws IOException {
        if (b()) {
            List<Proxy> list = this.f37130e;
            int i10 = this.f37131f;
            this.f37131f = i10 + 1;
            Proxy proxy = list.get(i10);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f37126a.k().g() + "; exhausted proxy configurations: " + this.f37130e);
    }

    public boolean a() {
        return b() || !this.f37133h.isEmpty();
    }

    public a c() throws IOException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (b()) {
            Proxy proxyD = d();
            int size = this.f37132g.size();
            for (int i10 = 0; i10 < size; i10++) {
                a0 a0Var = new a0(this.f37126a, proxyD, this.f37132g.get(i10));
                if (this.f37127b.c(a0Var)) {
                    this.f37133h.add(a0Var);
                } else {
                    arrayList.add(a0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f37133h);
            this.f37133h.clear();
        }
        return new a(arrayList);
    }

    public void a(a0 a0Var, IOException iOException) {
        if (a0Var.b().type() != Proxy.Type.DIRECT && this.f37126a.h() != null) {
            this.f37126a.h().connectFailed(this.f37126a.k().m(), a0Var.b().address(), iOException);
        }
        this.f37127b.b(a0Var);
    }

    private void a(q qVar, Proxy proxy) {
        List<Proxy> listA;
        if (proxy != null) {
            this.f37130e = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f37126a.h().select(qVar.m());
            if (listSelect != null && !listSelect.isEmpty()) {
                listA = com.mbridge.msdk.thrid.okhttp.internal.c.a(listSelect);
            } else {
                listA = com.mbridge.msdk.thrid.okhttp.internal.c.a(Proxy.NO_PROXY);
            }
            this.f37130e = listA;
        }
        this.f37131f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        String strG;
        int iJ;
        this.f37132g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                strG = a(inetSocketAddress);
                iJ = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
        } else {
            strG = this.f37126a.k().g();
            iJ = this.f37126a.k().j();
        }
        if (iJ >= 1 && iJ <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f37132g.add(InetSocketAddress.createUnresolved(strG, iJ));
                return;
            }
            this.f37129d.dnsStart(this.f37128c, strG);
            List<InetAddress> listA = this.f37126a.c().a(strG);
            if (!listA.isEmpty()) {
                this.f37129d.dnsEnd(this.f37128c, strG, listA);
                int size = listA.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.f37132g.add(new InetSocketAddress(listA.get(i10), iJ));
                }
                return;
            }
            throw new UnknownHostException(this.f37126a.c() + " returned no addresses for " + strG);
        }
        throw new SocketException("No route to " + strG + ":" + iJ + "; port is out of range");
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
