package com.transsion.athena.ehanat;

import android.annotation.TargetApi;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

@TargetApi(17)
public class athena {

    public static aethna f41580a = new aethna();

    public static class aethna implements HostnameVerifier {

        private HostnameVerifier f41581a = HttpsURLConnection.getDefaultHostnameVerifier();

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return this.f41581a.verify(str, sSLSession);
        }
    }

    class C0577athena implements X509TrustManager {
        C0577athena() {
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public static SSLContext a() {
        SSLContext sSLContext = null;
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS");
            try {
                sSLContext2.init(null, new TrustManager[]{new C0577athena()}, new SecureRandom());
                return sSLContext2;
            } catch (Exception unused) {
                sSLContext = sSLContext2;
                return sSLContext;
            }
        } catch (Exception unused2) {
        }
    }
}
