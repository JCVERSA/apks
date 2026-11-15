package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.lzy.okgo.model.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

public class yz extends jk {
    private final boolean e;
    private final int f;
    private final int g;

    @Nullable
    private final String h;

    @Nullable
    private final uh0 i;
    private final uh0 j;
    private final boolean k;

    @Nullable
    private wj1<String> l;

    @Nullable
    private HttpURLConnection m;

    @Nullable
    private InputStream n;
    private boolean o;
    private int p;
    private long q;
    private long r;

    public static final class a implements tv.a {

        @Nullable
        private String b;
        private final uh0 a = new uh0();
        private int c = 8000;
        private int d = 8000;

        @Override
        public final tv a() {
            return new yz(this.b, this.c, this.d, this.a);
        }

        public final a b() {
            this.b = null;
            return this;
        }
    }

    public static class b extends mc0<String, List<String>> {
        private final Map<String, List<String>> b;

        public b(Map<String, List<String>> map) {
            this.b = map;
        }

        public static boolean a(String str) {
            return str != null;
        }

        @Override
        public final Map<String, List<String>> b() {
            return this.b;
        }

        @Override
        public final boolean containsKey(@Nullable Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override
        public final boolean containsValue(@Nullable Object obj) {
            Iterator it = (Iterator) vj1.a(entrySet().iterator());
            if (obj == null) {
                while (it.hasNext()) {
                    if (((Map.Entry) it.next()).getValue() == null) {
                        return true;
                    }
                }
                return false;
            }
            while (it.hasNext()) {
                if (obj.equals(((Map.Entry) it.next()).getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public final Set<Map.Entry<String, List<String>>> entrySet() {
            return wx1.a(super.entrySet(), new wj1() {
                @Override
                public final boolean apply(Object obj) {
                    return yz.b.a((Map.Entry) obj);
                }
            });
        }

        @Override
        public final boolean equals(@Nullable Object obj) {
            return obj != null && a(obj);
        }

        @Override
        @Nullable
        public final Object get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override
        public final int hashCode() {
            return c();
        }

        @Override
        public final boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override
        public final Set<String> keySet() {
            return wx1.a(super.keySet(), new wj1() {
                @Override
                public final boolean apply(Object obj) {
                    return yz.b.a((String) obj);
                }
            });
        }

        @Override
        public final int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override
        public final Map a() {
            return this.b;
        }

        public static boolean a(Map.Entry entry) {
            return entry.getKey() != null;
        }
    }

    public yz(@Nullable String str, int i, int i2, @Nullable uh0 uh0Var) {
        super(true);
        this.h = str;
        this.f = i;
        this.g = i2;
        this.e = false;
        this.i = uh0Var;
        this.l = null;
        this.j = new uh0();
        this.k = false;
    }

    private URL a(URL url, @Nullable String str) throws rh0 {
        if (str == null) {
            throw new rh0("Null location redirect", 2001);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new rh0("Unsupported protocol redirect: " + protocol, 2001);
            }
            if (this.e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new rh0("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", 2001);
        } catch (MalformedURLException e) {
            throw new rh0(e, 2001, 1);
        }
    }

    private HttpURLConnection d(xv xvVar) throws IOException {
        xvVar = xvVar;
        URL url = new URL(xvVar.a.toString());
        int i = xvVar.c;
        byte[] bArr = xvVar.d;
        long j = xvVar.f;
        long j2 = xvVar.g;
        int i2 = 0;
        boolean z = (xvVar.i & 1) == 1;
        if (!this.e && !this.k) {
            return a(url, i, bArr, j, j2, z, true, xvVar.e);
        }
        URL urlA = url;
        int i3 = i;
        byte[] bArr2 = bArr;
        while (true) {
            int i4 = i2 + 1;
            if (i2 > 20) {
                throw new rh0(new NoRouteToHostException(oe.a("Too many redirects: ", i4)), 2001, 1);
            }
            Map<String, String> map = xvVar.e;
            int i5 = i3;
            i2 = i4;
            URL url2 = urlA;
            j2 = j2;
            HttpURLConnection httpURLConnectionA = a(urlA, i3, bArr2, j, j2, z, false, map);
            int responseCode = httpURLConnectionA.getResponseCode();
            String headerField = httpURLConnectionA.getHeaderField("Location");
            if ((i5 == 1 || i5 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionA.disconnect();
                urlA = a(url2, headerField);
                i3 = i5;
            } else {
                if (i5 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionA;
                }
                httpURLConnectionA.disconnect();
                if (this.k && responseCode == 302) {
                    i3 = i5;
                } else {
                    bArr2 = null;
                    i3 = 1;
                }
                urlA = a(url2, headerField);
            }
        }
    }

    private void f() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                et0.a("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.m = null;
        }
    }

    @Override
    public final void close() throws rh0 {
        try {
            InputStream inputStream = this.n;
            if (inputStream != null) {
                long j = this.q;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.r;
                }
                a(this.m, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    int i = f92.a;
                    throw new rh0(e, 2000, 3);
                }
            }
            this.n = null;
            f();
            if (this.o) {
                this.o = false;
                e();
            }
        } catch (Throwable th) {
            this.n = null;
            f();
            if (this.o) {
                this.o = false;
                e();
            }
            throw th;
        }
    }

    @Override
    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.m;
        return httpURLConnection == null ? lk0.g() : new b(httpURLConnection.getHeaderFields());
    }

    @Override
    @Nullable
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c A[Catch: IOException -> 0x001e, TRY_LEAVE, TryCatch #0 {IOException -> 0x001e, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0017, B:12:0x0020, B:15:0x002c), top: B:20:0x0004 }] */
    @Override
    public final int read(byte[] bArr, int i, int i2) throws rh0 {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.q;
            if (j != -1) {
                long j2 = j - this.r;
                if (j2 != 0) {
                    i2 = (int) Math.min(i2, j2);
                    InputStream inputStream = this.n;
                    int i4 = f92.a;
                    i3 = inputStream.read(bArr, i, i2);
                    if (i3 != -1) {
                        this.r += (long) i3;
                        c(i3);
                        return i3;
                    }
                }
            } else {
                InputStream inputStream2 = this.n;
                int i5 = f92.a;
                i3 = inputStream2.read(bArr, i, i2);
                if (i3 != -1) {
                    this.r += (long) i3;
                    c(i3);
                    return i3;
                }
            }
            return -1;
        } catch (IOException e) {
            int i6 = f92.a;
            throw rh0.a(e, 2);
        }
    }

    private HttpURLConnection a(URL url, int i, @Nullable byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        String string;
        HttpURLConnection httpURLConnectionA = a(url);
        httpURLConnectionA.setConnectTimeout(this.f);
        httpURLConnectionA.setReadTimeout(this.g);
        HashMap map2 = new HashMap();
        uh0 uh0Var = this.i;
        if (uh0Var != null) {
            map2.putAll(uh0Var.a());
        }
        map2.putAll(this.j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionA.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        int i2 = hi0.c;
        if (j == 0 && j2 == -1) {
            string = null;
        } else {
            StringBuilder sb = new StringBuilder("bytes=");
            sb.append(j);
            sb.append("-");
            if (j2 != -1) {
                sb.append((j + j2) - 1);
            }
            string = sb.toString();
        }
        if (string != null) {
            httpURLConnectionA.setRequestProperty("Range", string);
        }
        String str = this.h;
        if (str != null) {
            httpURLConnectionA.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionA.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, z ? "gzip" : "identity");
        httpURLConnectionA.setInstanceFollowRedirects(z2);
        httpURLConnectionA.setDoOutput(bArr != null);
        httpURLConnectionA.setRequestMethod(xv.a(i));
        if (bArr != null) {
            httpURLConnectionA.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionA.connect();
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionA.connect();
        }
        return httpURLConnectionA;
    }

    private static void a(@Nullable HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = f92.a) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Class<? super Object> superclass = inputStream.getClass().getSuperclass();
                superclass.getClass();
                Method declaredMethod = superclass.getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final long a(xv xvVar) throws rh0 {
        long j = 0;
        this.r = 0L;
        this.q = 0L;
        b(xvVar);
        try {
            HttpURLConnection httpURLConnectionD = d(xvVar);
            this.m = httpURLConnectionD;
            this.p = httpURLConnectionD.getResponseCode();
            httpURLConnectionD.getResponseMessage();
            int i = this.p;
            if (i >= 200 && i <= 299) {
                String contentType = httpURLConnectionD.getContentType();
                wj1<String> wj1Var = this.l;
                if (wj1Var != null && !wj1Var.apply(contentType)) {
                    f();
                    throw new sh0(contentType);
                }
                if (this.p == 200) {
                    long j2 = xvVar.f;
                    if (j2 != 0) {
                        j = j2;
                    }
                }
                boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionD.getHeaderField("Content-Encoding"));
                if (!zEqualsIgnoreCase) {
                    long j3 = xvVar.g;
                    if (j3 != -1) {
                        this.q = j3;
                    } else {
                        long jA = hi0.a(httpURLConnectionD.getHeaderField("Content-Length"), httpURLConnectionD.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE));
                        this.q = jA != -1 ? jA - j : -1L;
                    }
                } else {
                    this.q = xvVar.g;
                }
                try {
                    this.n = httpURLConnectionD.getInputStream();
                    if (zEqualsIgnoreCase) {
                        this.n = new GZIPInputStream(this.n);
                    }
                    this.o = true;
                    c(xvVar);
                    try {
                        a(j);
                        return this.q;
                    } catch (IOException e) {
                        f();
                        if (e instanceof rh0) {
                            throw ((rh0) e);
                        }
                        throw new rh0(e, 2000, 1);
                    }
                } catch (IOException e2) {
                    f();
                    throw new rh0(e2, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = httpURLConnectionD.getHeaderFields();
            if (this.p == 416) {
                if (xvVar.f == hi0.a(httpURLConnectionD.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE))) {
                    this.o = true;
                    c(xvVar);
                    long j4 = xvVar.g;
                    if (j4 != -1) {
                        return j4;
                    }
                    return 0L;
                }
            }
            InputStream errorStream = httpURLConnectionD.getErrorStream();
            try {
                if (errorStream != null) {
                    int i2 = f92.a;
                    byte[] bArr = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int i3 = errorStream.read(bArr);
                        if (i3 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i3);
                    }
                    byteArrayOutputStream.toByteArray();
                } else {
                    int i4 = f92.a;
                }
            } catch (IOException unused) {
                int i5 = f92.a;
            }
            f();
            throw new th0(this.p, this.p == 416 ? new uv(2008) : null, headerFields);
        } catch (IOException e3) {
            f();
            throw rh0.a(e3, 1);
        }
    }

    @VisibleForTesting
    public HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private void a(long j) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int iMin = (int) Math.min(j, 4096);
            InputStream inputStream = this.n;
            int i = f92.a;
            int i2 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new rh0(new InterruptedIOException(), 2000, 1);
            }
            if (i2 != -1) {
                j -= (long) i2;
                c(i2);
            } else {
                throw new rh0(2008);
            }
        }
    }
}
