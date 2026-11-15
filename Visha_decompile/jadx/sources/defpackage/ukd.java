package defpackage;

import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public abstract class ukd {
    public static b a = new b();

    public class a implements X509TrustManager {
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

    public static class b implements HostnameVerifier {
        public HostnameVerifier a = HttpsURLConnection.getDefaultHostnameVerifier();

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return this.a.verify(str, sSLSession);
        }
    }

    public static SSLContext a() {
        SSLContext sSLContext = null;
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS");
            try {
                sSLContext2.init(null, new TrustManager[]{new a()}, new SecureRandom());
                return sSLContext2;
            } catch (Exception unused) {
                sSLContext = sSLContext2;
                return sSLContext;
            }
        } catch (Exception unused2) {
        }
    }
}
