package io.appmetrica.analytics.network.impl;

import androidx.annotation.VisibleForTesting;
import defpackage.ly0;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.network.internal.Call;
import io.appmetrica.analytics.network.internal.NetworkClient;
import io.appmetrica.analytics.network.internal.Request;
import io.appmetrica.analytics.network.internal.Response;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class c implements Call {
    public final NetworkClient a;
    public final Request b;
    public final d c;

    @VisibleForTesting
    public c(NetworkClient networkClient, Request request, d dVar) {
        this.a = networkClient;
        this.b = request;
        this.c = dVar;
    }

    public final void a(HttpsURLConnection httpsURLConnection) throws ProtocolException {
        Iterator<T> it = this.b.getHeaders().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Integer readTimeout = this.a.getReadTimeout();
        if (readTimeout != null) {
            httpsURLConnection.setReadTimeout(readTimeout.intValue());
        }
        Integer connectTimeout = this.a.getConnectTimeout();
        if (connectTimeout != null) {
            httpsURLConnection.setConnectTimeout(connectTimeout.intValue());
        }
        Boolean useCaches = this.a.getUseCaches();
        if (useCaches != null) {
            httpsURLConnection.setUseCaches(useCaches.booleanValue());
        }
        Boolean instanceFollowRedirects = this.a.getInstanceFollowRedirects();
        if (instanceFollowRedirects != null) {
            httpsURLConnection.setInstanceFollowRedirects(instanceFollowRedirects.booleanValue());
        }
        httpsURLConnection.setRequestMethod(this.b.getMethod());
        SSLSocketFactory sslSocketFactory = this.a.getSslSocketFactory();
        if (sslSocketFactory != null) {
            httpsURLConnection.setSSLSocketFactory(sslSocketFactory);
        }
    }

    @Override
    public final Response execute() {
        int responseCode;
        Map<String, List<String>> map;
        boolean z;
        Throwable th;
        byte[] bArr;
        byte[] bArrA;
        int i;
        try {
            d dVar = this.c;
            String url = this.b.getUrl();
            dVar.getClass();
            URLConnection uRLConnectionOpenConnection = new URL(url).openConnection();
            Map<String, List<String>> map2 = null;
            HttpsURLConnection httpsURLConnection = uRLConnectionOpenConnection instanceof HttpsURLConnection ? (HttpsURLConnection) uRLConnectionOpenConnection : null;
            if (httpsURLConnection == null) {
                return new Response(new IllegalArgumentException("Connection created for " + this.b.getUrl() + " does not represent https connection"));
            }
            byte[] bArrA2 = new byte[0];
            byte[] bArr2 = new byte[0];
            try {
                a(httpsURLConnection);
                if (y45.e(this.b.getMethod(), "POST")) {
                    try {
                        httpsURLConnection.setDoOutput(true);
                        OutputStream outputStream = httpsURLConnection.getOutputStream();
                        if (outputStream != null) {
                            try {
                                outputStream.write(this.b.getBody());
                                outputStream.flush();
                                zfb zfbVar = zfb.a;
                                ly0.a(outputStream, null);
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    ly0.a(outputStream, th2);
                                    throw th3;
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        responseCode = 0;
                        map = map2;
                        z = false;
                        th = th;
                        bArr = bArrA2;
                        bArrA = bArr2;
                        i = responseCode;
                        httpsURLConnection.disconnect();
                        return new Response(z, i, bArr, bArrA, map, th);
                    }
                }
                responseCode = httpsURLConnection.getResponseCode();
                try {
                    Map<String, List<String>> headerFields = httpsURLConnection.getHeaderFields();
                    try {
                        bArrA2 = e.a(this.a.getMaxResponseSize(), new a(httpsURLConnection));
                        th = null;
                        bArr = bArrA2;
                        bArrA = e.a(this.a.getMaxResponseSize(), new b(httpsURLConnection));
                        i = responseCode;
                        map = headerFields;
                        z = true;
                    } catch (Throwable th5) {
                        th = th5;
                        map2 = headerFields;
                        map = map2;
                        z = false;
                        th = th;
                        bArr = bArrA2;
                        bArrA = bArr2;
                        i = responseCode;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
            }
            try {
                httpsURLConnection.disconnect();
            } catch (Throwable unused) {
            }
            return new Response(z, i, bArr, bArrA, map, th);
        } catch (Throwable th8) {
            return new Response(th8);
        }
    }

    public c(NetworkClient networkClient, Request request) {
        this(networkClient, request, new d());
    }
}
