package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

public final class vw1 implements tw1 {
    private final uw1 a;

    public vw1(iu1 iu1Var) {
        y45.j(iu1Var, "customCertificatesProvider");
        this.a = new uw1(iu1Var);
    }

    @Override
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        this.a.a(x509CertificateArr, str);
    }

    @Override
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        this.a.b(x509CertificateArr, str);
    }

    @Override
    public final X509Certificate[] getAcceptedIssuers() {
        return this.a.c();
    }
}
