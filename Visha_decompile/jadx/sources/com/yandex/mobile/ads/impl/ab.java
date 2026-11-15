package com.yandex.mobile.ads.impl;

import androidx.webkit.ProxyConfig;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.apache.commons.text.StringSubstitutor;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class ab {
    private final q30 a;
    private final SocketFactory b;
    private final SSLSocketFactory c;
    private final HostnameVerifier d;
    private final fo e;
    private final ci f;
    private final Proxy g;
    private final ProxySelector h;
    private final gi0 i;
    private final List<mm1> j;
    private final List<rr> k;

    public ab(String str, int i, q30 q30Var, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, ee1 ee1Var, fo foVar, ci ciVar, List list, List list2, ProxySelector proxySelector) {
        y45.j(str, "uriHost");
        y45.j(q30Var, StringLookupFactory.KEY_DNS);
        y45.j(socketFactory, "socketFactory");
        y45.j(ciVar, "proxyAuthenticator");
        y45.j(list, "protocols");
        y45.j(list2, "connectionSpecs");
        y45.j(proxySelector, "proxySelector");
        this.a = q30Var;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.d = ee1Var;
        this.e = foVar;
        this.f = ciVar;
        this.g = null;
        this.h = proxySelector;
        this.i = new gi0.a().c(sSLSocketFactory != null ? ProxyConfig.MATCH_HTTPS : ProxyConfig.MATCH_HTTP).b(str).a(i).a();
        this.j = g92.b(list);
        this.k = g92.b(list2);
    }

    public final fo a() {
        return this.e;
    }

    public final List<rr> b() {
        return this.k;
    }

    public final q30 c() {
        return this.a;
    }

    public final HostnameVerifier d() {
        return this.d;
    }

    public final List<mm1> e() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ab) {
            ab abVar = (ab) obj;
            if (y45.e(this.i, abVar.i) && a(abVar)) {
                return true;
            }
        }
        return false;
    }

    public final Proxy f() {
        return this.g;
    }

    public final ci g() {
        return this.f;
    }

    public final ProxySelector h() {
        return this.h;
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((Objects.hashCode(this.g) + ((this.h.hashCode() + aa.a(this.k, aa.a(this.j, (this.f.hashCode() + ((this.a.hashCode() + ((this.i.hashCode() + 527) * 31)) * 31)) * 31, 31), 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final SocketFactory i() {
        return this.b;
    }

    public final SSLSocketFactory j() {
        return this.c;
    }

    public final gi0 k() {
        return this.i;
    }

    public final String toString() {
        String str;
        String strG = this.i.g();
        int i = this.i.i();
        Proxy proxy = this.g;
        if (proxy != null) {
            str = "proxy=" + proxy;
        } else {
            str = "proxySelector=" + this.h;
        }
        return "Address{" + strG + StringUtils.PROCESS_POSTFIX_DELIMITER + i + ", " + str + StringSubstitutor.DEFAULT_VAR_END;
    }

    public final boolean a(ab abVar) {
        y45.j(abVar, "that");
        return y45.e(this.a, abVar.a) && y45.e(this.f, abVar.f) && y45.e(this.j, abVar.j) && y45.e(this.k, abVar.k) && y45.e(this.h, abVar.h) && y45.e(this.g, abVar.g) && y45.e(this.c, abVar.c) && y45.e(this.d, abVar.d) && y45.e(this.e, abVar.e) && this.i.i() == abVar.i.i();
    }
}
