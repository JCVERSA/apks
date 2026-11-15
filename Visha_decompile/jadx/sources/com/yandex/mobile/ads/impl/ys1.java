package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public final class ys1 {
    private final ab a;
    private final ws1 b;
    private final nn c;
    private final w50 d;
    private List<? extends Proxy> e;
    private int f;
    private List<? extends InetSocketAddress> g;
    private final ArrayList h;

    public static final class a {
        public static String a(InetSocketAddress inetSocketAddress) {
            y45.j(inetSocketAddress, "<this>");
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                String hostName = inetSocketAddress.getHostName();
                y45.i(hostName, "getHostName(...)");
                return hostName;
            }
            String hostAddress = address.getHostAddress();
            y45.i(hostAddress, "getHostAddress(...)");
            return hostAddress;
        }
    }

    public static final class b {
        private final List<vs1> a;
        private int b;

        public b(ArrayList arrayList) {
            y45.j(arrayList, "routes");
            this.a = arrayList;
        }

        public final List<vs1> a() {
            return this.a;
        }

        public final boolean b() {
            return this.b < this.a.size();
        }

        public final vs1 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<vs1> list = this.a;
            int i = this.b;
            this.b = i + 1;
            return list.get(i);
        }
    }

    public ys1(ab abVar, ws1 ws1Var, zn1 zn1Var, w50 w50Var) {
        y45.j(abVar, "address");
        y45.j(ws1Var, "routeDatabase");
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(w50Var, "eventListener");
        this.a = abVar;
        this.b = ws1Var;
        this.c = zn1Var;
        this.d = w50Var;
        this.e = defpackage.y71.k();
        this.g = defpackage.y71.k();
        this.h = new ArrayList();
        a(abVar.k(), abVar.f());
    }

    private final Proxy c() throws IOException {
        if (this.f < this.e.size()) {
            List<? extends Proxy> list = this.e;
            int i = this.f;
            this.f = i + 1;
            Proxy proxy = list.get(i);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.a.k().g() + "; exhausted proxy configurations: " + this.e);
    }

    public final boolean a() {
        return this.f < this.e.size() || !this.h.isEmpty();
    }

    public final b b() throws IOException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (this.f < this.e.size()) {
            Proxy proxyC = c();
            Iterator<? extends InetSocketAddress> it = this.g.iterator();
            while (it.hasNext()) {
                vs1 vs1Var = new vs1(this.a, proxyC, it.next());
                if (this.b.c(vs1Var)) {
                    this.h.add(vs1Var);
                } else {
                    arrayList.add(vs1Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            defpackage.d81.C(arrayList, this.h);
            this.h.clear();
        }
        return new b(arrayList);
    }

    private final void a(Proxy proxy) throws IOException {
        String strG;
        int i;
        ArrayList arrayList = new ArrayList();
        this.g = arrayList;
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress instanceof InetSocketAddress) {
                y45.g(socketAddressAddress);
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                strG = a.a(inetSocketAddress);
                i = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass()).toString());
            }
        } else {
            strG = this.a.k().g();
            i = this.a.k().i();
        }
        if (1 <= i && i < 65536) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList.add(InetSocketAddress.createUnresolved(strG, i));
                return;
            }
            w50 w50Var = this.d;
            nn nnVar = this.c;
            w50Var.getClass();
            w50.a(nnVar, strG);
            List<InetAddress> listA = this.a.c().a(strG);
            if (!listA.isEmpty()) {
                w50 w50Var2 = this.d;
                nn nnVar2 = this.c;
                w50Var2.getClass();
                w50.a(nnVar2, strG, listA);
                Iterator<InetAddress> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(new InetSocketAddress(it.next(), i));
                }
                return;
            }
            throw new UnknownHostException(this.a.c() + " returned no addresses for " + strG);
        }
        throw new SocketException("No route to " + strG + StringUtils.PROCESS_POSTFIX_DELIMITER + i + "; port is out of range");
    }

    private final void a(gi0 gi0Var, Proxy proxy) {
        List<? extends Proxy> listA;
        w50 w50Var = this.d;
        nn nnVar = this.c;
        w50Var.getClass();
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
        y45.j(gi0Var, "url");
        if (proxy != null) {
            listA = defpackage.x71.e(proxy);
        } else {
            URI uriL = gi0Var.l();
            if (uriL.getHost() == null) {
                listA = g92.a(Proxy.NO_PROXY);
            } else {
                List<Proxy> listSelect = this.a.h().select(uriL);
                if (listSelect != null && !listSelect.isEmpty()) {
                    y45.g(listSelect);
                    listA = g92.b(listSelect);
                } else {
                    listA = g92.a(Proxy.NO_PROXY);
                }
            }
        }
        this.e = listA;
        this.f = 0;
        w50 w50Var2 = this.d;
        nn nnVar2 = this.c;
        w50Var2.getClass();
        y45.j(nnVar2, NotificationCompat.CATEGORY_CALL);
        y45.j(gi0Var, "url");
        y45.j(listA, "proxies");
    }
}
