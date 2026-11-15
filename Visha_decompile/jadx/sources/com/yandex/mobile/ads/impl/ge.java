package com.yandex.mobile.ads.impl;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import defpackage.y45;
import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;

@RequiresApi(24)
public final class ge {
    @DoNotInline
    public static final void a(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        y45.j(x509TrustManager, "trustManager");
        if (x509TrustManager instanceof X509ExtendedTrustManager) {
            ((X509ExtendedTrustManager) x509TrustManager).checkClientTrusted(x509CertificateArr, str, socket);
        } else {
            x509TrustManager.checkClientTrusted(x509CertificateArr, str);
        }
    }

    @DoNotInline
    public static final void b(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        y45.j(x509TrustManager, "trustManager");
        if (x509TrustManager instanceof X509ExtendedTrustManager) {
            ((X509ExtendedTrustManager) x509TrustManager).checkServerTrusted(x509CertificateArr, str, socket);
        } else {
            x509TrustManager.checkServerTrusted(x509CertificateArr, str);
        }
    }

    @DoNotInline
    public static final void a(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        y45.j(x509TrustManager, "trustManager");
        if (x509TrustManager instanceof X509ExtendedTrustManager) {
            ((X509ExtendedTrustManager) x509TrustManager).checkClientTrusted(x509CertificateArr, str, sSLEngine);
        } else {
            x509TrustManager.checkClientTrusted(x509CertificateArr, str);
        }
    }

    @DoNotInline
    public static final void b(X509TrustManager x509TrustManager, X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        y45.j(x509TrustManager, "trustManager");
        if (x509TrustManager instanceof X509ExtendedTrustManager) {
            ((X509ExtendedTrustManager) x509TrustManager).checkServerTrusted(x509CertificateArr, str, sSLEngine);
        } else {
            x509TrustManager.checkServerTrusted(x509CertificateArr, str);
        }
    }

    @DoNotInline
    public static final tw1 a(mv mvVar) throws CertificateException {
        y45.j(mvVar, "customCertificatesProvider");
        return new ev1(mvVar);
    }
}
