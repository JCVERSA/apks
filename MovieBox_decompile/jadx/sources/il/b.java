package il;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class b {

    protected static SSLSocketFactory f62132a;

    class a implements X509TrustManager {
        a(b bVar) {
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
        if (f62132a == null) {
            synchronized (this) {
                try {
                    if (f62132a == null) {
                        TrustManager[] trustManagerArr = {new a(this)};
                        try {
                            SSLContext sSLContext = SSLContext.getInstance("TLS");
                            sSLContext.init(null, trustManagerArr, null);
                            f62132a = sSLContext.getSocketFactory();
                        } catch (Throwable th2) {
                            jl.a.f63170a.e("SSL", th2.getMessage());
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return f62132a;
    }
}
