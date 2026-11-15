package com.cloud.hisavana.net.ssl;

import android.annotation.SuppressLint;
import android.util.Log;
import defpackage.ja1;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

@SuppressLint({"CustomX509TrustManager"})
public class HttpsTrustManager implements X509TrustManager {

    public static class TrustAllHostnameVerifier implements HostnameVerifier {
        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public static SSLSocketFactory a() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new HttpsTrustManager()}, new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e) {
            ja1.netLog("createSSLSocketFactory: --> " + Log.getStackTraceString(e));
            return null;
        }
    }

    @Override
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}
