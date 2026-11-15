package defpackage;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

public class k6d {
    public static HostnameVerifier a;

    public class a implements HostnameVerifier {
        public HostnameVerifier a = HttpsURLConnection.getDefaultHostnameVerifier();

        public a(k6d k6dVar) {
        }

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return this.a.verify(str, sSLSession);
        }
    }

    public HostnameVerifier a() {
        if (a == null) {
            synchronized (this) {
                try {
                    if (a == null) {
                        a = new a(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }
}
