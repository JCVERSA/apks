package defpackage;

import java.util.List;

public final class qz6 {
    public final qe a;
    public int b;
    public int c;
    public int d;
    public boolean e;
    public String f;
    public int g;
    public boolean h;
    public int i;
    public long j;
    public jpa k;
    public npa l;
    public yfb m;
    public List n;
    public boolean o;
    public boolean p;
    public boolean q;
    public yj4 r;

    public qz6(qe qeVar, int i, int i2, int i3, boolean z, String str, int i4, boolean z2, int i5, long j, jpa jpaVar, npa npaVar, yfb yfbVar, List list, he7 he7Var, boolean z3, boolean z4, boolean z5, yj4 yj4Var) {
        y45.j(qeVar, "appInfoProvider");
        y45.j(str, "cacheDir");
        y45.j(jpaVar, "accessTokenFetcher");
        y45.j(npaVar, "tokenRefresher");
        y45.j(yfbVar, "uniqueIdFetcher");
        y45.j(list, "customInterceptors");
        this.a = qeVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = str;
        this.g = i4;
        this.h = z2;
        this.i = i5;
        this.j = j;
        this.k = jpaVar;
        this.l = npaVar;
        this.m = yfbVar;
        this.n = list;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = yj4Var;
    }

    public final jpa a() {
        return this.k;
    }

    public final qe b() {
        return this.a;
    }

    public final String c() {
        return this.f;
    }

    public final int d() {
        return this.g;
    }

    public final int e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qz6)) {
            return false;
        }
        qz6 qz6Var = (qz6) obj;
        return y45.e(this.a, qz6Var.a) && this.b == qz6Var.b && this.c == qz6Var.c && this.d == qz6Var.d && this.e == qz6Var.e && y45.e(this.f, qz6Var.f) && this.g == qz6Var.g && this.h == qz6Var.h && this.i == qz6Var.i && this.j == qz6Var.j && y45.e(this.k, qz6Var.k) && y45.e(this.l, qz6Var.l) && y45.e(this.m, qz6Var.m) && y45.e(this.n, qz6Var.n) && y45.e(null, null) && this.o == qz6Var.o && this.p == qz6Var.p && this.q == qz6Var.q && y45.e(this.r, qz6Var.r);
    }

    public final List f() {
        return this.n;
    }

    public final he7 g() {
        return null;
    }

    public final boolean h() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Boolean.hashCode(this.e)) * 31) + this.f.hashCode()) * 31) + Integer.hashCode(this.g)) * 31) + Boolean.hashCode(this.h)) * 31) + Integer.hashCode(this.i)) * 31) + Long.hashCode(this.j)) * 31) + this.k.hashCode()) * 31) + this.l.hashCode()) * 31) + this.m.hashCode()) * 31) + this.n.hashCode()) * 961) + Boolean.hashCode(this.o)) * 31) + Boolean.hashCode(this.p)) * 31) + Boolean.hashCode(this.q)) * 31;
        yj4 yj4Var = this.r;
        return iHashCode + (yj4Var == null ? 0 : yj4Var.hashCode());
    }

    public final boolean i() {
        return this.h;
    }

    public final boolean j() {
        return this.q;
    }

    public final yj4 k() {
        return this.r;
    }

    public final int l() {
        return this.i;
    }

    public final int m() {
        return this.c;
    }

    public final long n() {
        return this.j;
    }

    public final npa o() {
        return this.l;
    }

    public final yfb p() {
        return this.m;
    }

    public final boolean q() {
        return this.p;
    }

    public final int r() {
        return this.d;
    }

    public final boolean s() {
        return this.o;
    }

    public String toString() {
        return "NetworkConfig(appInfoProvider=" + this.a + ", connectTimeout=" + this.b + ", readTimeout=" + this.c + ", writeTimeout=" + this.d + ", enableLog=" + this.e + ", cacheDir=" + this.f + ", cacheSize=" + this.g + ", enableNetworkRetry=" + this.h + ", maxRetryCount=" + this.i + ", retryDelayMs=" + this.j + ", accessTokenFetcher=" + this.k + ", tokenRefresher=" + this.l + ", uniqueIdFetcher=" + this.m + ", customInterceptors=" + this.n + ", customOkHttpClientFactory=" + ((Object) null) + ", isTest=" + this.o + ", useTranssionDrive=" + this.p + ", enableRegionHost=" + this.q + ", gslbCallback=" + this.r + ")";
    }
}
