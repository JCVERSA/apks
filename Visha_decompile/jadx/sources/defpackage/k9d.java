package defpackage;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class k9d {
    public static SSLSocketFactory a;

    public class a implements X509TrustManager {
        public a(k9d k9dVar) {
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

    public SSLSocketFactory a() {
        if (a == null) {
            synchronized (this) {
                try {
                    if (a == null) {
                        TrustManager[] trustManagerArr = {new a(this)};
                        try {
                            SSLContext sSLContext = SSLContext.getInstance("TLS");
                            sSLContext.init(null, trustManagerArr, null);
                            a = sSLContext.getSocketFactory();
                        } catch (Throwable th) {
                            hf1.a.e("SSL", th.getMessage());
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return a;
    }
}
