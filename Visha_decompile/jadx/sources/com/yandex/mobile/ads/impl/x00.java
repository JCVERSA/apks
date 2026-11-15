package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class x00 implements l12 {
    private final a a;
    private l12 b;

    public interface a {
        boolean a(SSLSocket sSLSocket);

        xd b(SSLSocket sSLSocket);
    }

    public x00(wd wdVar) {
        y45.j(wdVar, "socketAdapterFactory");
        this.a = wdVar;
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final String b(SSLSocket sSLSocket) {
        l12 l12Var;
        y45.j(sSLSocket, "sslSocket");
        synchronized (this) {
            try {
                if (this.b == null && this.a.a(sSLSocket)) {
                    this.b = this.a.b(sSLSocket);
                }
                l12Var = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (l12Var != null) {
            return l12Var.b(sSLSocket);
        }
        return null;
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<? extends mm1> list) {
        l12 l12Var;
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        synchronized (this) {
            try {
                if (this.b == null && this.a.a(sSLSocket)) {
                    this.b = this.a.b(sSLSocket);
                }
                l12Var = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (l12Var != null) {
            l12Var.a(sSLSocket, str, list);
        }
    }

    @Override
    public final boolean a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        return this.a.a(sSLSocket);
    }
}
