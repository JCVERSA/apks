package com.yandex.mobile.ads.impl;

import androidx.annotation.RequiresApi;
import defpackage.y45;
import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedTrustManager;

@RequiresApi(24)
public final class ev1 extends X509ExtendedTrustManager implements tw1 {
    private final uw1 a;

    public ev1(mv mvVar) {
        y45.j(mvVar, "customCertificatesProvider");
        this.a = new uw1(mvVar);
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

    @Override
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        this.a.a(x509CertificateArr, str, socket);
    }

    @Override
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        this.a.b(x509CertificateArr, str, socket);
    }

    @Override
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        this.a.a(x509CertificateArr, str, sSLEngine);
    }

    @Override
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        this.a.b(x509CertificateArr, str, sSLEngine);
    }
}
