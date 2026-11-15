package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

public final class fe1 implements Cloneable, nn.a {
    public static final int B = 0;
    private final s10 a;
    private final pr b;
    private final List<mp0> c;
    private final List<mp0> d;
    private final w50.b e;
    private final boolean f;
    private final ci g;
    private final boolean h;
    private final boolean i;
    private final qs j;
    private final q30 k;
    private final ProxySelector l;
    private final ci m;
    private final SocketFactory n;
    private final SSLSocketFactory o;
    private final X509TrustManager p;
    private final List<rr> q;
    private final List<mm1> r;
    private final ee1 s;
    private final fo t;
    private final eo u;
    private final int v;
    private final int w;
    private final int x;
    private final ws1 y;
    private static final List<mm1> z = g92.a(mm1.g, mm1.e);
    private static final List<rr> A = g92.a(rr.e, rr.f);

    public static final class a {
        private s10 a = new s10();
        private pr b = new pr();
        private final ArrayList c = new ArrayList();
        private final ArrayList d = new ArrayList();
        private w50.b e = g92.a(w50.a);
        private boolean f = true;
        private ci g;
        private boolean h;
        private boolean i;
        private qs j;
        private q30 k;
        private ci l;
        private SocketFactory m;
        private SSLSocketFactory n;
        private X509TrustManager o;
        private List<rr> p;
        private List<? extends mm1> q;
        private ee1 r;
        private fo s;
        private eo t;
        private int u;
        private int v;
        private int w;

        public a() {
            ci ciVar = ci.a;
            this.g = ciVar;
            this.h = true;
            this.i = true;
            this.j = qs.a;
            this.k = q30.a;
            this.l = ciVar;
            SocketFactory socketFactory = SocketFactory.getDefault();
            y45.i(socketFactory, "getDefault(...)");
            this.m = socketFactory;
            int i = fe1.B;
            this.p = b.a();
            this.q = b.b();
            this.r = ee1.a;
            this.s = fo.c;
            this.u = 10000;
            this.v = 10000;
            this.w = 10000;
        }

        public final a a(long j, TimeUnit timeUnit) {
            y45.j(timeUnit, "unit");
            this.u = g92.a(j, timeUnit);
            return this;
        }

        public final ci b() {
            return this.g;
        }

        public final eo c() {
            return this.t;
        }

        public final fo d() {
            return this.s;
        }

        public final int e() {
            return this.u;
        }

        public final pr f() {
            return this.b;
        }

        public final List<rr> g() {
            return this.p;
        }

        public final qs h() {
            return this.j;
        }

        public final s10 i() {
            return this.a;
        }

        public final q30 j() {
            return this.k;
        }

        public final w50.b k() {
            return this.e;
        }

        public final boolean l() {
            return this.h;
        }

        public final boolean m() {
            return this.i;
        }

        public final ee1 n() {
            return this.r;
        }

        public final ArrayList o() {
            return this.c;
        }

        public final ArrayList p() {
            return this.d;
        }

        public final List<mm1> q() {
            return this.q;
        }

        public final ci r() {
            return this.l;
        }

        public final int s() {
            return this.v;
        }

        public final boolean t() {
            return this.f;
        }

        public final SocketFactory u() {
            return this.m;
        }

        public final SSLSocketFactory v() {
            return this.n;
        }

        public final int w() {
            return this.w;
        }

        public final X509TrustManager x() {
            return this.o;
        }

        public final a b(long j, TimeUnit timeUnit) {
            y45.j(timeUnit, "unit");
            this.v = g92.a(j, timeUnit);
            return this;
        }

        public final a a() {
            this.h = true;
            return this;
        }

        public final a a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            y45.j(sSLSocketFactory, "sslSocketFactory");
            y45.j(x509TrustManager, "trustManager");
            if (y45.e(sSLSocketFactory, this.n)) {
                y45.e(x509TrustManager, this.o);
            }
            this.n = sSLSocketFactory;
            y45.j(x509TrustManager, "trustManager");
            this.t = rh1.a.a(x509TrustManager);
            this.o = x509TrustManager;
            return this;
        }
    }

    public static final class b {
        public static List a() {
            return fe1.A;
        }

        public static List b() {
            return fe1.z;
        }
    }

    public fe1() {
        this(new a());
    }

    private final void y() {
        List<mp0> list = this.c;
        y45.h(list, "null cannot be cast to non-null type kotlin.collections.List<com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.Interceptor?>");
        if (list.contains(null)) {
            throw new IllegalStateException(("Null interceptor: " + this.c).toString());
        }
        List<mp0> list2 = this.d;
        y45.h(list2, "null cannot be cast to non-null type kotlin.collections.List<com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.Interceptor?>");
        if (list2.contains(null)) {
            throw new IllegalStateException(("Null network interceptor: " + this.d).toString());
        }
        List<rr> list3 = this.q;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator<T> it = list3.iterator();
            while (it.hasNext()) {
                if (((rr) it.next()).a()) {
                    if (this.o == null) {
                        throw new IllegalStateException("sslSocketFactory == null");
                    }
                    if (this.u == null) {
                        throw new IllegalStateException("certificateChainCleaner == null");
                    }
                    if (this.p == null) {
                        throw new IllegalStateException("x509TrustManager == null");
                    }
                    return;
                }
            }
        }
        if (this.o != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.u != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.p != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (!y45.e(this.t, fo.c)) {
            throw new IllegalStateException("Check failed.");
        }
    }

    @Override
    public final zn1 a(vp1 vp1Var) {
        y45.j(vp1Var, Progress.REQUEST);
        return new zn1(this, vp1Var, false);
    }

    public final ci c() {
        return this.g;
    }

    public final Object clone() {
        return super.clone();
    }

    public final fo d() {
        return this.t;
    }

    public final int e() {
        return this.v;
    }

    public final pr f() {
        return this.b;
    }

    public final List<rr> g() {
        return this.q;
    }

    public final qs h() {
        return this.j;
    }

    public final s10 i() {
        return this.a;
    }

    public final q30 j() {
        return this.k;
    }

    public final w50.b k() {
        return this.e;
    }

    public final boolean l() {
        return this.h;
    }

    public final boolean m() {
        return this.i;
    }

    public final ws1 n() {
        return this.y;
    }

    public final ee1 o() {
        return this.s;
    }

    public final List<mp0> p() {
        return this.c;
    }

    public final List<mp0> q() {
        return this.d;
    }

    public final List<mm1> r() {
        return this.r;
    }

    public final ci s() {
        return this.m;
    }

    public final ProxySelector t() {
        return this.l;
    }

    public final int u() {
        return this.w;
    }

    public final boolean v() {
        return this.f;
    }

    public final SocketFactory w() {
        return this.n;
    }

    public final SSLSocketFactory x() {
        SSLSocketFactory sSLSocketFactory = this.o;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    public final int z() {
        return this.x;
    }

    public fe1(a aVar) throws NoSuchAlgorithmException, KeyStoreException {
        y45.j(aVar, "builder");
        this.a = aVar.i();
        this.b = aVar.f();
        this.c = g92.b(aVar.o());
        this.d = g92.b(aVar.p());
        this.e = aVar.k();
        this.f = aVar.t();
        this.g = aVar.b();
        this.h = aVar.l();
        this.i = aVar.m();
        this.j = aVar.h();
        this.k = aVar.j();
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.l = proxySelector == null ? vd1.a : proxySelector;
        this.m = aVar.r();
        this.n = aVar.u();
        List<rr> listG = aVar.g();
        this.q = listG;
        this.r = aVar.q();
        this.s = aVar.n();
        this.v = aVar.e();
        this.w = aVar.s();
        this.x = aVar.w();
        this.y = new ws1();
        if ((listG instanceof Collection) && listG.isEmpty()) {
            this.o = null;
            this.u = null;
            this.p = null;
            this.t = fo.c;
        } else {
            Iterator<T> it = listG.iterator();
            while (it.hasNext()) {
                if (((rr) it.next()).a()) {
                    if (aVar.v() != null) {
                        this.o = aVar.v();
                        eo eoVarC = aVar.c();
                        y45.g(eoVarC);
                        this.u = eoVarC;
                        X509TrustManager x509TrustManagerX = aVar.x();
                        y45.g(x509TrustManagerX);
                        this.p = x509TrustManagerX;
                        fo foVarD = aVar.d();
                        y45.g(eoVarC);
                        this.t = foVarD.a(eoVarC);
                    } else {
                        int i = rh1.c;
                        rh1.a.a().getClass();
                        X509TrustManager x509TrustManagerC = rh1.c();
                        this.p = x509TrustManagerC;
                        rh1 rh1VarA = rh1.a.a();
                        y45.g(x509TrustManagerC);
                        rh1VarA.getClass();
                        this.o = rh1.c(x509TrustManagerC);
                        y45.g(x509TrustManagerC);
                        eo eoVarA = eo.a.a(x509TrustManagerC);
                        this.u = eoVarA;
                        fo foVarD2 = aVar.d();
                        y45.g(eoVarA);
                        this.t = foVarD2.a(eoVarA);
                    }
                }
            }
            this.o = null;
            this.u = null;
            this.p = null;
            this.t = fo.c;
        }
        y();
    }
}
