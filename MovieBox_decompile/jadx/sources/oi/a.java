package oi;

import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a implements X509TrustManager {

    public static final C0831a f67825a = new C0831a(null);

    public static final class C0831a {
        public C0831a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SSLSocketFactory a() {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, new TrustManager[]{new a()}, new SecureRandom());
                return sSLContext.getSocketFactory();
            } catch (Exception unused) {
                return null;
            }
        }

        private C0831a() {
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
