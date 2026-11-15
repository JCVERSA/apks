package com.yandex.mobile.ads.impl;

import android.net.http.X509TrustManagerExtensions;
import defpackage.y45;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

public final class qd extends eo {
    private final X509TrustManager a;
    private final X509TrustManagerExtensions b;

    public static final class a {
        public static qd a(X509TrustManager x509TrustManager) {
            X509TrustManagerExtensions x509TrustManagerExtensions;
            y45.j(x509TrustManager, "trustManager");
            try {
                x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
            } catch (IllegalArgumentException unused) {
                x509TrustManagerExtensions = null;
            }
            if (x509TrustManagerExtensions != null) {
                return new qd(x509TrustManager, x509TrustManagerExtensions);
            }
            return null;
        }
    }

    public qd(X509TrustManager x509TrustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        y45.j(x509TrustManager, "trustManager");
        y45.j(x509TrustManagerExtensions, "x509TrustManagerExtensions");
        this.a = x509TrustManager;
        this.b = x509TrustManagerExtensions;
    }

    @Override
    public final List a(String str, List list) throws SSLPeerUnverifiedException {
        y45.j(list, "chain");
        y45.j(str, "hostname");
        try {
            List<X509Certificate> listCheckServerTrusted = this.b.checkServerTrusted((X509Certificate[]) list.toArray(new X509Certificate[0]), "RSA", str);
            y45.i(listCheckServerTrusted, "checkServerTrusted(...)");
            return listCheckServerTrusted;
        } catch (CertificateException e) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e.getMessage());
            sSLPeerUnverifiedException.initCause(e);
            throw sSLPeerUnverifiedException;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof qd) && ((qd) obj).a == this.a;
    }

    public final int hashCode() {
        return System.identityHashCode(this.a);
    }
}
