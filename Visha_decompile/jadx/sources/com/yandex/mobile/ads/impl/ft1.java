package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public final class ft1 implements et1 {
    private final pw1 a;

    public ft1(pw1 pw1Var) {
        y45.j(pw1Var, "sdkSettings");
        this.a = pw1Var;
    }

    @Override
    public final SSLSocketFactory a(Context context) {
        y45.j(context, "context");
        ju1 ju1VarA = this.a.a(context);
        y45.j(context, "context");
        iu1 iu1Var = new iu1(context);
        if (ju1VarA != null && ju1VarA.l0()) {
            y45.j(iu1Var, "customCertificatesProvider");
            tw1 tw1VarA = pr0.a(iu1Var);
            y45.j(tw1VarA, "trustManager");
            SSLSocketFactory socketFactory = new ct1(tw1VarA).a().getSocketFactory();
            y45.i(socketFactory, "getSocketFactory(...)");
            return socketFactory;
        }
        if (pa.a(21)) {
            int i = yj1.b;
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
                try {
                    sSLContext.init(null, null, null);
                } catch (KeyManagementException e) {
                    sp0.b(e.getMessage());
                }
                SSLSocketFactory socketFactory2 = sSLContext.getSocketFactory();
                y45.i(socketFactory2, "getSocketFactory(...)");
                return new yj1(socketFactory2);
            } catch (NoSuchAlgorithmException e2) {
                sp0.b("TLSv1.2", e2.getMessage());
            }
        }
        return null;
    }
}
