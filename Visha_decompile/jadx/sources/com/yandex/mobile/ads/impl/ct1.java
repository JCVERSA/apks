package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;

public final class ct1 {
    private final X509TrustManager a;

    public ct1(tw1 tw1Var) {
        y45.j(tw1Var, "trustManager");
        this.a = tw1Var;
    }

    public final SSLContext a() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new X509TrustManager[]{this.a}, null);
            y45.g(sSLContext);
            return sSLContext;
        } catch (KeyManagementException e) {
            throw new IllegalStateException("Failed to initialize SSLContext", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No system TLS", e2);
        }
    }
}
