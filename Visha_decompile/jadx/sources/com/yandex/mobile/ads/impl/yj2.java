package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.http.SslError;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import kotlin.jvm.internal.Lambda;

public final class yj2 implements xj2 {
    private final yi5 a = kotlin.b.a(a.b);

    public static final class a extends Lambda implements c74 {
        public static final a b = new a();

        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return CertificateFactory.getInstance("X.509");
        }
    }

    @Override
    public final boolean a(Context context, SslError sslError) {
        X509Certificate x509Certificate;
        y45.j(context, "context");
        y45.j(sslError, "sslError");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA == null || !ju1VarA.l0() || (x509Certificate = sslError.getCertificate().getX509Certificate()) == null) {
            return false;
        }
        y45.j(context, "context");
        try {
            pr0.a(new iu1(context)).checkServerTrusted(new X509Certificate[]{x509Certificate}, "RSA");
            return true;
        } catch (Exception unused) {
            int i2 = sp0.b;
            y45.j(new Object[0], "args");
            return false;
        }
    }
}
