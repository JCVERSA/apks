package il;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public class a {

    protected static HostnameVerifier f62131a;

    class C0760a implements HostnameVerifier {
        C0760a(a aVar) {
        }

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public HostnameVerifier a() {
        if (f62131a == null) {
            synchronized (this) {
                try {
                    if (f62131a == null) {
                        f62131a = new C0760a(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f62131a;
    }
}
