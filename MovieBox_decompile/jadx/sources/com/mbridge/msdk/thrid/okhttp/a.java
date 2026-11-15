package com.mbridge.msdk.thrid.okhttp;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class a {

    final q f36921a;

    final m f36922b;

    final SocketFactory f36923c;

    final b f36924d;

    final List<u> f36925e;

    final List<i> f36926f;

    final ProxySelector f36927g;

    final Proxy f36928h;

    final SSLSocketFactory f36929i;

    final HostnameVerifier f36930j;

    final e f36931k;

    public a(String str, int i10, m mVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, e eVar, b bVar, Proxy proxy, List<u> list, List<i> list2, ProxySelector proxySelector) {
        this.f36921a = new q.a().e(sSLSocketFactory != null ? "https" : "http").b(str).a(i10).a();
        if (mVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f36922b = mVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f36923c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f36924d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f36925e = com.mbridge.msdk.thrid.okhttp.internal.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f36926f = com.mbridge.msdk.thrid.okhttp.internal.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f36927g = proxySelector;
        this.f36928h = proxy;
        this.f36929i = sSLSocketFactory;
        this.f36930j = hostnameVerifier;
        this.f36931k = eVar;
    }

    public e a() {
        return this.f36931k;
    }

    public List<i> b() {
        return this.f36926f;
    }

    public m c() {
        return this.f36922b;
    }

    public HostnameVerifier d() {
        return this.f36930j;
    }

    public List<u> e() {
        return this.f36925e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f36921a.equals(aVar.f36921a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public Proxy f() {
        return this.f36928h;
    }

    public b g() {
        return this.f36924d;
    }

    public ProxySelector h() {
        return this.f36927g;
    }

    public int hashCode() {
        int iHashCode = (((((((((((this.f36921a.hashCode() + 527) * 31) + this.f36922b.hashCode()) * 31) + this.f36924d.hashCode()) * 31) + this.f36925e.hashCode()) * 31) + this.f36926f.hashCode()) * 31) + this.f36927g.hashCode()) * 31;
        Proxy proxy = this.f36928h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f36929i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f36930j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        e eVar = this.f36931k;
        return iHashCode4 + (eVar != null ? eVar.hashCode() : 0);
    }

    public SocketFactory i() {
        return this.f36923c;
    }

    public SSLSocketFactory j() {
        return this.f36929i;
    }

    public q k() {
        return this.f36921a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f36921a.g());
        sb2.append(":");
        sb2.append(this.f36921a.j());
        if (this.f36928h != null) {
            sb2.append(", proxy=");
            sb2.append(this.f36928h);
        } else {
            sb2.append(", proxySelector=");
            sb2.append(this.f36927g);
        }
        sb2.append("}");
        return sb2.toString();
    }

    boolean a(a aVar) {
        return this.f36922b.equals(aVar.f36922b) && this.f36924d.equals(aVar.f36924d) && this.f36925e.equals(aVar.f36925e) && this.f36926f.equals(aVar.f36926f) && this.f36927g.equals(aVar.f36927g) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f36928h, aVar.f36928h) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f36929i, aVar.f36929i) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f36930j, aVar.f36930j) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f36931k, aVar.f36931k) && k().j() == aVar.k().j();
    }
}
