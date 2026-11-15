package defpackage;

import com.blankj.utilcode.util.LogUtils;
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

public abstract class tt4 {
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

    public static HttpURLConnection b(String str, Map map, boolean z, int i, int i2) throws IOException {
        URL url = new URL(str);
        a = 0;
        while (a < 20) {
            try {
                HttpURLConnection httpURLConnectionD = d(url, map, z, i, i2);
                int responseCode = httpURLConnectionD.getResponseCode();
                if (responseCode != 300 && responseCode != 301 && responseCode != 302 && (responseCode != 303 || (responseCode != 307 && responseCode != 308))) {
                    return httpURLConnectionD;
                }
                String headerField = httpURLConnectionD.getHeaderField("Location");
                httpURLConnectionD.disconnect();
                url = new URL(headerField);
                a++;
            } catch (IOException e) {
                if (((e instanceof SSLHandshakeException) || (e instanceof SSLPeerUnverifiedException)) && !z) {
                    return b(str, map, true, i, i2);
                }
                throw e;
            }
        }
        throw new NoRouteToHostException("Too many redirects: " + a);
    }

    public static boolean c(String str, SSLSession sSLSession) {
        return true;
    }

    public static HttpURLConnection d(URL url, Map map, boolean z, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        if (z && (httpURLConnection instanceof HttpsURLConnection)) {
            e((HttpsURLConnection) httpURLConnection);
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i2);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public static void e(HttpsURLConnection httpsURLConnection) {
        SSLContext sSLContext;
        SSLContext sSLContext2 = null;
        try {
            sSLContext = SSLContext.getInstance("TLS");
            if (sSLContext != null) {
                try {
                    sSLContext.init(null, new TrustManager[]{new a()}, null);
                } catch (Exception unused) {
                    sSLContext2 = sSLContext;
                    LogUtils.O("HttpUtils", "SSLContext init failed");
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
                return tt4.c(str, sSLSession);
            }
        });
        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
    }
}
