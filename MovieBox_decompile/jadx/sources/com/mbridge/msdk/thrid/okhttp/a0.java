package com.mbridge.msdk.thrid.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;

public final class a0 {

    final a f36932a;

    final Proxy f36933b;

    final InetSocketAddress f36934c;

    public a0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f36932a = aVar;
        this.f36933b = proxy;
        this.f36934c = inetSocketAddress;
    }

    public a a() {
        return this.f36932a;
    }

    public Proxy b() {
        return this.f36933b;
    }

    public boolean c() {
        return this.f36932a.f36929i != null && this.f36933b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f36934c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            if (a0Var.f36932a.equals(this.f36932a) && a0Var.f36933b.equals(this.f36933b) && a0Var.f36934c.equals(this.f36934c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f36932a.hashCode() + 527) * 31) + this.f36933b.hashCode()) * 31) + this.f36934c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f36934c + "}";
    }
}
