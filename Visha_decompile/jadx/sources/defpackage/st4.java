package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public abstract class st4 {
    public static int a;

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

    public static void b(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public static HttpURLConnection c(String str, Map map, boolean z) throws IOException {
        URL url = new URL(str);
        a = 0;
        while (a < 20) {
            try {
                HttpURLConnection httpURLConnectionE = e(url, map, z);
                int responseCode = httpURLConnectionE.getResponseCode();
                if (responseCode != 300 && responseCode != 301 && responseCode != 302 && (responseCode != 303 || (responseCode != 307 && responseCode != 308))) {
                    return httpURLConnectionE;
                }
                String headerField = httpURLConnectionE.getHeaderField("Location");
                httpURLConnectionE.disconnect();
                url = new URL(headerField);
                a++;
            } catch (IOException e) {
                if (((e instanceof SSLHandshakeException) || (e instanceof SSLPeerUnverifiedException)) && !z) {
                    return c(str, map, true);
                }
                throw e;
            }
        }
        throw new NoRouteToHostException("Too many redirects: " + a);
    }

    public static boolean d(String str, SSLSession sSLSession) {
        return true;
    }

    public static HttpURLConnection e(URL url, Map map, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        if (z && (httpURLConnection instanceof HttpsURLConnection)) {
            g((HttpsURLConnection) httpURLConnection);
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(frb.d().c());
        httpURLConnection.setReadTimeout(frb.d().d());
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String scheme = Uri.parse(str).getScheme();
        return ProxyConfig.MATCH_HTTP.equals(scheme) || ProxyConfig.MATCH_HTTPS.equals(scheme);
    }

    public static void g(HttpsURLConnection httpsURLConnection) {
        SSLContext sSLContext;
        SSLContext sSLContext2 = null;
        try {
            sSLContext = SSLContext.getInstance("TLS");
            if (sSLContext != null) {
                try {
                    sSLContext.init(null, new TrustManager[]{new a()}, null);
                } catch (Exception unused) {
                    sSLContext2 = sSLContext;
                    eq5.d("HttpUtils", "SSLContext init failed");
                    sSLContext = sSLContext2;
                }
            }
        } catch (Exception unused2) {
        }
        if (sSLContext == null) {
            return;
        }
        httpsURLConnection.setHostnameVerifier(new HostnameVerifier() {
            @Override
            public final boolean verify(String str, SSLSession sSLSession) {
                return st4.d(str, sSLSession);
            }
        });
        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
    }
}
