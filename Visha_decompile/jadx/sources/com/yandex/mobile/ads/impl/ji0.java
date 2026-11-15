package com.yandex.mobile.ads.impl;

import androidx.annotation.VisibleForTesting;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class ji0 extends nk {
    private final b a;
    private final SSLSocketFactory b;

    public static class a extends FilterInputStream {
        private final HttpURLConnection a;

        public a(HttpURLConnection httpURLConnection) {
            super(ji0.a(httpURLConnection));
            this.a = httpURLConnection;
        }

        @Override
        public final void close() throws IOException {
            super.close();
            this.a.disconnect();
        }
    }

    public interface b extends t82 {
    }

    public ji0(b bVar, SSLSocketFactory sSLSocketFactory) {
        this.a = bVar;
        this.b = sSLSocketFactory;
    }

    private static void a(HttpURLConnection httpURLConnection, up1 up1Var, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    @VisibleForTesting
    public static ArrayList a(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new kf0((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    @Override
    public final ci0 a(up1<?> up1Var, Map<String, String> map) throws Throwable {
        SSLSocketFactory sSLSocketFactory;
        String strL = up1Var.l();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(up1Var.e());
        b bVar = this.a;
        if (bVar != null) {
            String strA = bVar.a(strL);
            if (strA == null) {
                throw new IOException("URL blocked by rewriter: " + strL);
            }
            strL = strA;
        }
        URL url = new URL(strL);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int iJ = up1Var.j();
        httpURLConnection.setConnectTimeout(iJ);
        httpURLConnection.setReadTimeout(iJ);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (ProxyConfig.MATCH_HTTPS.equals(url.getProtocol()) && (sSLSocketFactory = this.b) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (String str : map2.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map2.get(str));
            }
            a(up1Var, httpURLConnection);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != -1) {
                if (up1Var.f() != 4 && ((100 > responseCode || responseCode >= 200) && responseCode != 204 && responseCode != 304)) {
                    try {
                        return new ci0(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new a(httpURLConnection));
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        if (!z) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                ci0 ci0Var = new ci0(responseCode, a(httpURLConnection.getHeaderFields()), -1, null);
                httpURLConnection.disconnect();
                return ci0Var;
            }
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static InputStream a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    public static void a(up1 up1Var, HttpURLConnection httpURLConnection) throws IOException, ai {
        switch (up1Var.f()) {
            case -1:
                return;
            case 0:
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                byte[] bArrB = up1Var.b();
                if (bArrB != null) {
                    a(httpURLConnection, up1Var, bArrB);
                    return;
                }
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                byte[] bArrB2 = up1Var.b();
                if (bArrB2 != null) {
                    a(httpURLConnection, up1Var, bArrB2);
                    return;
                }
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
                byte[] bArrB3 = up1Var.b();
                if (bArrB3 != null) {
                    a(httpURLConnection, up1Var, bArrB3);
                    return;
                }
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }
}
