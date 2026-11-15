package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.InetSocketAddress;
import java.net.Proxy;
import org.apache.commons.text.StringSubstitutor;

public final class vs1 {
    private final ab a;
    private final Proxy b;
    private final InetSocketAddress c;

    public vs1(ab abVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        y45.j(abVar, "address");
        y45.j(proxy, "proxy");
        y45.j(inetSocketAddress, "socketAddress");
        this.a = abVar;
        this.b = proxy;
        this.c = inetSocketAddress;
    }

    public final ab a() {
        return this.a;
    }

    public final Proxy b() {
        return this.b;
    }

    public final boolean c() {
        return this.a.j() != null && this.b.type() == Proxy.Type.HTTP;
    }

    public final InetSocketAddress d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof vs1) {
            vs1 vs1Var = (vs1) obj;
            if (y45.e(vs1Var.a, this.a) && y45.e(vs1Var.b, this.b) && y45.e(vs1Var.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
