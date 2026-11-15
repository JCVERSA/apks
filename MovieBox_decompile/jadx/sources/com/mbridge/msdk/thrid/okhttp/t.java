package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class t implements Cloneable {
    static final List<u> A = com.mbridge.msdk.thrid.okhttp.internal.c.a(u.HTTP_2, u.HTTP_1_1);
    static final List<i> B = com.mbridge.msdk.thrid.okhttp.internal.c.a(i.f37056h, i.f37058j);

    final l f37475a;

    final Proxy f37476b;

    final List<u> f37477c;

    final List<i> f37478d;

    final List<r> f37479e;

    final List<r> f37480f;

    final n.c f37481g;

    final ProxySelector f37482h;

    final k f37483i;

    final SocketFactory f37484j;

    final SSLSocketFactory f37485k;

    final com.mbridge.msdk.thrid.okhttp.internal.tls.c f37486l;

    final HostnameVerifier f37487m;

    final e f37488n;

    final com.mbridge.msdk.thrid.okhttp.b f37489o;

    final com.mbridge.msdk.thrid.okhttp.b f37490p;

    final h f37491q;

    final m f37492r;

    final boolean f37493s;

    final boolean f37494t;

    final boolean f37495u;

    final int f37496v;

    final int f37497w;

    final int f37498x;

    final int f37499y;

    final int f37500z;

    static class a extends com.mbridge.msdk.thrid.okhttp.internal.a {
        a() {
        }

        @Override
        public void a(p.a aVar, String str) {
            aVar.a(str);
        }

        @Override
        public void b(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            hVar.b(cVar);
        }

        @Override
        public void a(p.a aVar, String str, String str2) {
            aVar.b(str, str2);
        }

        @Override
        public boolean a(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            return hVar.a(cVar);
        }

        @Override
        public com.mbridge.msdk.thrid.okhttp.internal.connection.c a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, a0 a0Var) {
            return hVar.a(aVar, gVar, a0Var);
        }

        @Override
        public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.a aVar2) {
            return aVar.a(aVar2);
        }

        @Override
        public Socket a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar) {
            return hVar.a(aVar, gVar);
        }

        @Override
        public com.mbridge.msdk.thrid.okhttp.internal.connection.d a(h hVar) {
            return hVar.f37050e;
        }

        @Override
        public int a(y.a aVar) {
            return aVar.f37574c;
        }

        @Override
        public void a(i iVar, SSLSocket sSLSocket, boolean z10) {
            iVar.a(sSLSocket, z10);
        }

        @Override
        public IOException a(d dVar, IOException iOException) {
            return ((v) dVar).a(iOException);
        }
    }

    public static final class b {

        l f37501a;

        Proxy f37502b;

        List<u> f37503c;

        List<i> f37504d;

        final List<r> f37505e;

        final List<r> f37506f;

        n.c f37507g;

        ProxySelector f37508h;

        k f37509i;

        SocketFactory f37510j;

        SSLSocketFactory f37511k;

        com.mbridge.msdk.thrid.okhttp.internal.tls.c f37512l;

        HostnameVerifier f37513m;

        e f37514n;

        com.mbridge.msdk.thrid.okhttp.b f37515o;

        com.mbridge.msdk.thrid.okhttp.b f37516p;

        h f37517q;

        m f37518r;

        boolean f37519s;

        boolean f37520t;

        boolean f37521u;

        int f37522v;

        int f37523w;

        int f37524x;

        int f37525y;

        int f37526z;

        public b() {
            this.f37505e = new ArrayList();
            this.f37506f = new ArrayList();
            this.f37501a = new l();
            this.f37503c = t.A;
            this.f37504d = t.B;
            this.f37507g = n.factory(n.NONE);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f37508h = proxySelector;
            if (proxySelector == null) {
                this.f37508h = new com.mbridge.msdk.thrid.okhttp.internal.proxy.a();
            }
            this.f37509i = k.f37440a;
            this.f37510j = SocketFactory.getDefault();
            this.f37513m = com.mbridge.msdk.thrid.okhttp.internal.tls.d.f37426a;
            this.f37514n = e.f36966c;
            com.mbridge.msdk.thrid.okhttp.b bVar = com.mbridge.msdk.thrid.okhttp.b.f36935a;
            this.f37515o = bVar;
            this.f37516p = bVar;
            this.f37517q = new h();
            this.f37518r = m.f37449a;
            this.f37519s = true;
            this.f37520t = true;
            this.f37521u = true;
            this.f37522v = 0;
            this.f37523w = 10000;
            this.f37524x = 10000;
            this.f37525y = 10000;
            this.f37526z = 0;
        }

        public b a(long j10, TimeUnit timeUnit) {
            this.f37522v = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b b(long j10, TimeUnit timeUnit) {
            this.f37523w = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b c(long j10, TimeUnit timeUnit) {
            this.f37526z = com.mbridge.msdk.thrid.okhttp.internal.c.a("interval", j10, timeUnit);
            return this;
        }

        public b d(long j10, TimeUnit timeUnit) {
            this.f37524x = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b e(long j10, TimeUnit timeUnit) {
            this.f37525y = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b a(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("dns == null");
            }
            this.f37518r = mVar;
            return this;
        }

        public b a(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier != null) {
                this.f37513m = hostnameVerifier;
                return this;
            }
            throw new NullPointerException("hostnameVerifier == null");
        }

        public b a(h hVar) {
            if (hVar != null) {
                this.f37517q = hVar;
                return this;
            }
            throw new NullPointerException("connectionPool == null");
        }

        public b a(boolean z10) {
            this.f37521u = z10;
            return this;
        }

        public b a(l lVar) {
            if (lVar != null) {
                this.f37501a = lVar;
                return this;
            }
            throw new IllegalArgumentException("dispatcher == null");
        }

        public b a(List<u> list) {
            ArrayList arrayList = new ArrayList(list);
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(uVar) && !arrayList.contains(u.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: " + arrayList);
            }
            if (arrayList.contains(uVar) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + arrayList);
            }
            if (!arrayList.contains(u.HTTP_1_0)) {
                if (!arrayList.contains(null)) {
                    arrayList.remove(u.SPDY_3);
                    this.f37503c = Collections.unmodifiableList(arrayList);
                    return this;
                }
                throw new IllegalArgumentException("protocols must not contain null");
            }
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
        }

        public b a(n nVar) {
            if (nVar != null) {
                this.f37507g = n.factory(nVar);
                return this;
            }
            throw new NullPointerException("eventListener == null");
        }

        public t a() {
            return new t(this);
        }

        b(t tVar) {
            ArrayList arrayList = new ArrayList();
            this.f37505e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f37506f = arrayList2;
            this.f37501a = tVar.f37475a;
            this.f37502b = tVar.f37476b;
            this.f37503c = tVar.f37477c;
            this.f37504d = tVar.f37478d;
            arrayList.addAll(tVar.f37479e);
            arrayList2.addAll(tVar.f37480f);
            this.f37507g = tVar.f37481g;
            this.f37508h = tVar.f37482h;
            this.f37509i = tVar.f37483i;
            this.f37510j = tVar.f37484j;
            this.f37511k = tVar.f37485k;
            this.f37512l = tVar.f37486l;
            this.f37513m = tVar.f37487m;
            this.f37514n = tVar.f37488n;
            this.f37515o = tVar.f37489o;
            this.f37516p = tVar.f37490p;
            this.f37517q = tVar.f37491q;
            this.f37518r = tVar.f37492r;
            this.f37519s = tVar.f37493s;
            this.f37520t = tVar.f37494t;
            this.f37521u = tVar.f37495u;
            this.f37522v = tVar.f37496v;
            this.f37523w = tVar.f37497w;
            this.f37524x = tVar.f37498x;
            this.f37525y = tVar.f37499y;
            this.f37526z = tVar.f37500z;
        }
    }

    static {
        com.mbridge.msdk.thrid.okhttp.internal.a.f37067a = new a();
    }

    public t() {
        this(new b());
    }

    private static SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContextE = com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().e();
            sSLContextE.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextE.getSocketFactory();
        } catch (GeneralSecurityException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("No System TLS", (Exception) e10);
        }
    }

    public SocketFactory A() {
        return this.f37484j;
    }

    public SSLSocketFactory B() {
        return this.f37485k;
    }

    public int C() {
        return this.f37499y;
    }

    public int b() {
        return this.f37496v;
    }

    public e c() {
        return this.f37488n;
    }

    public int e() {
        return this.f37497w;
    }

    public h f() {
        return this.f37491q;
    }

    public List<i> g() {
        return this.f37478d;
    }

    public k i() {
        return this.f37483i;
    }

    public l j() {
        return this.f37475a;
    }

    public m k() {
        return this.f37492r;
    }

    public n.c l() {
        return this.f37481g;
    }

    public boolean m() {
        return this.f37494t;
    }

    public boolean n() {
        return this.f37493s;
    }

    public HostnameVerifier o() {
        return this.f37487m;
    }

    public List<r> p() {
        return this.f37479e;
    }

    com.mbridge.msdk.thrid.okhttp.internal.cache.c q() {
        return null;
    }

    public List<r> r() {
        return this.f37480f;
    }

    public b s() {
        return new b(this);
    }

    public int t() {
        return this.f37500z;
    }

    public List<u> u() {
        return this.f37477c;
    }

    public Proxy v() {
        return this.f37476b;
    }

    public com.mbridge.msdk.thrid.okhttp.b w() {
        return this.f37489o;
    }

    public ProxySelector x() {
        return this.f37482h;
    }

    public int y() {
        return this.f37498x;
    }

    public boolean z() {
        return this.f37495u;
    }

    t(b bVar) {
        boolean z10;
        this.f37475a = bVar.f37501a;
        this.f37476b = bVar.f37502b;
        this.f37477c = bVar.f37503c;
        List<i> list = bVar.f37504d;
        this.f37478d = list;
        this.f37479e = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f37505e);
        this.f37480f = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f37506f);
        this.f37481g = bVar.f37507g;
        this.f37482h = bVar.f37508h;
        this.f37483i = bVar.f37509i;
        this.f37484j = bVar.f37510j;
        Iterator<i> it = list.iterator();
        loop0: while (true) {
            z10 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                } else {
                    z10 = (z10 || it.next().b()) ? true : z10;
                }
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f37511k;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager x509TrustManagerA = com.mbridge.msdk.thrid.okhttp.internal.c.a();
            this.f37485k = a(x509TrustManagerA);
            this.f37486l = com.mbridge.msdk.thrid.okhttp.internal.tls.c.a(x509TrustManagerA);
        } else {
            this.f37485k = sSLSocketFactory;
            this.f37486l = bVar.f37512l;
        }
        if (this.f37485k != null) {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f37485k);
        }
        this.f37487m = bVar.f37513m;
        this.f37488n = bVar.f37514n.a(this.f37486l);
        this.f37489o = bVar.f37515o;
        this.f37490p = bVar.f37516p;
        this.f37491q = bVar.f37517q;
        this.f37492r = bVar.f37518r;
        this.f37493s = bVar.f37519s;
        this.f37494t = bVar.f37520t;
        this.f37495u = bVar.f37521u;
        this.f37496v = bVar.f37522v;
        this.f37497w = bVar.f37523w;
        this.f37498x = bVar.f37524x;
        this.f37499y = bVar.f37525y;
        this.f37500z = bVar.f37526z;
        if (this.f37479e.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f37479e);
        }
        if (this.f37480f.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f37480f);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.b a() {
        return this.f37490p;
    }

    public d a(w wVar) {
        return v.a(this, wVar, false);
    }
}
