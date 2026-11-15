package com.android.volley.toolbox;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class g extends com.android.volley.toolbox.a {

    private final SSLSocketFactory f18688a;

    static class a extends FilterInputStream {

        private final HttpURLConnection f18689a;

        a(HttpURLConnection httpURLConnection) {
            super(g.j(httpURLConnection));
            this.f18689a = httpURLConnection;
        }

        @Override
        public void close() throws IOException {
            super.close();
            this.f18689a.disconnect();
        }
    }

    public interface b {
    }

    public g() {
        this(null);
    }

    private void c(HttpURLConnection httpURLConnection, Request request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey(HttpHeaders.CONTENT_TYPE)) {
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(h(request, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    private void d(HttpURLConnection httpURLConnection, Request request) throws IOException, AuthFailureError {
        byte[] body = request.getBody();
        if (body != null) {
            c(httpURLConnection, request, body);
        }
    }

    static List e(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new com.android.volley.e((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    private static boolean i(int i10, int i11) {
        return (i10 == 4 || (100 <= i11 && i11 < 200) || i11 == 204 || i11 == 304) ? false : true;
    }

    public static InputStream j(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private HttpURLConnection k(URL url, Request request) {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection httpURLConnectionF = f(url);
        int timeoutMs = request.getTimeoutMs();
        httpURLConnectionF.setConnectTimeout(timeoutMs);
        httpURLConnectionF.setReadTimeout(timeoutMs);
        httpURLConnectionF.setUseCaches(false);
        httpURLConnectionF.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f18688a) != null) {
            ((HttpsURLConnection) httpURLConnectionF).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnectionF;
    }

    @Override
    public e a(Request request, Map map) {
        String url = request.getUrl();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(request.getHeaders());
        HttpURLConnection httpURLConnectionK = k(new URL(url), request);
        try {
            for (String str : map2.keySet()) {
                httpURLConnectionK.setRequestProperty(str, (String) map2.get(str));
            }
            l(httpURLConnectionK, request);
            int responseCode = httpURLConnectionK.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (i(request.getMethod(), responseCode)) {
                return new e(responseCode, e(httpURLConnectionK.getHeaderFields()), httpURLConnectionK.getContentLength(), g(request, httpURLConnectionK));
            }
            e eVar = new e(responseCode, e(httpURLConnectionK.getHeaderFields()));
            httpURLConnectionK.disconnect();
            return eVar;
        } catch (Throwable th2) {
            if (0 == 0) {
                httpURLConnectionK.disconnect();
            }
            throw th2;
        }
    }

    protected HttpURLConnection f(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    protected InputStream g(Request request, HttpURLConnection httpURLConnection) {
        return new a(httpURLConnection);
    }

    protected OutputStream h(Request request, HttpURLConnection httpURLConnection, int i10) {
        return httpURLConnection.getOutputStream();
    }

    void l(HttpURLConnection httpURLConnection, Request request) throws IOException, AuthFailureError {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setRequestMethod("POST");
                    c(httpURLConnection, request, postBody);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                d(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                d(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                d(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    public g(b bVar) {
        this(bVar, null);
    }

    public g(b bVar, SSLSocketFactory sSLSocketFactory) {
        this.f18688a = sSLSocketFactory;
    }
}
