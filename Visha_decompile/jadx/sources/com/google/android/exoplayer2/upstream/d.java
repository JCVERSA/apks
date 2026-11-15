package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.google.android.exoplayer2.upstream.d;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.a54;
import defpackage.blb;
import defpackage.gs4;
import defpackage.he8;
import defpackage.op5;
import defpackage.pt4;
import defpackage.u5b;
import defpackage.u90;
import defpackage.zi;
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
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

public class d extends u90 implements com.google.android.exoplayer2.upstream.a {
    public final boolean e;
    public final int f;
    public final int g;
    public final String h;
    public final gs4 i;
    public final gs4 j;
    public final boolean k;
    public he8 l;
    public com.google.android.exoplayer2.upstream.b m;
    public HttpURLConnection n;
    public InputStream o;
    public boolean p;
    public int q;
    public long r;
    public long s;

    public static final class b implements com.google.android.exoplayer2.upstream.a.InterfaceC0084a {
        public u5b b;
        public he8 c;
        public String d;
        public boolean g;
        public boolean h;
        public final gs4 a = new gs4();
        public int e = 8000;
        public int f = 8000;

        @Override
        public d createDataSource() {
            d dVar = new d(this.d, this.e, this.f, this.g, this.a, this.c, this.h);
            u5b u5bVar = this.b;
            if (u5bVar != null) {
                dVar.b(u5bVar);
            }
            return dVar;
        }

        public b b(String str) {
            this.d = str;
            return this;
        }
    }

    public static class c extends a54 {
        public final Map b;

        public c(Map map) {
            this.b = map;
        }

        public static boolean lambda$entrySet$1(Map.Entry entry) {
            return entry.getKey() != null;
        }

        public static boolean lambda$keySet$0(String str) {
            return str != null;
        }

        @Override
        public boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override
        public boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override
        public Set entrySet() {
            return Sets.b(super.entrySet(), new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return d.c.lambda$entrySet$1((Map.Entry) obj);
                }
            });
        }

        @Override
        public boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override
        public int hashCode() {
            return super.standardHashCode();
        }

        @Override
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override
        public Set keySet() {
            return Sets.b(super.keySet(), new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return d.c.lambda$keySet$0((String) obj);
                }
            });
        }

        @Override
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override
        public Map f() {
            return this.b;
        }

        @Override
        public List get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }
    }

    public static boolean i(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    public static void l(HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = blb.a) < 19 || i > 20) {
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
                Method declaredMethod = ((Class) zi.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public long a(final com.google.android.exoplayer2.upstream.b bVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArrK0;
        this.m = bVar;
        long j = 0;
        this.s = 0L;
        this.r = 0L;
        e(bVar);
        try {
            HttpURLConnection httpURLConnectionJ = j(bVar);
            this.n = httpURLConnectionJ;
            this.q = httpURLConnectionJ.getResponseCode();
            String responseMessage = httpURLConnectionJ.getResponseMessage();
            int i = this.q;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionJ.getHeaderFields();
                if (this.q == 416) {
                    if (bVar.g == pt4.c(httpURLConnectionJ.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE))) {
                        this.p = true;
                        f(bVar);
                        long j2 = bVar.h;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionJ.getErrorStream();
                try {
                    bArrK0 = errorStream != null ? blb.K0(errorStream) : blb.f;
                } catch (IOException unused) {
                    bArrK0 = blb.f;
                }
                byte[] bArr = bArrK0;
                g();
                throw new HttpDataSource$InvalidResponseCodeException(this.q, responseMessage, this.q == 416 ? new DataSourceException(2008) : null, headerFields, bVar, bArr);
            }
            final String contentType = httpURLConnectionJ.getContentType();
            he8 he8Var = this.l;
            if (he8Var != null && !he8Var.apply(contentType)) {
                g();
                throw new HttpDataSource$HttpDataSourceException(contentType, bVar) {
                    public final String contentType;

                    {
                        super("Invalid content type: " + contentType, bVar, 2003, 1);
                        this.contentType = contentType;
                    }
                };
            }
            if (this.q == 200) {
                long j3 = bVar.g;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean zI = i(httpURLConnectionJ);
            if (zI) {
                this.r = bVar.h;
            } else {
                long j4 = bVar.h;
                if (j4 != -1) {
                    this.r = j4;
                } else {
                    long jB = pt4.b(httpURLConnectionJ.getHeaderField("Content-Length"), httpURLConnectionJ.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE));
                    this.r = jB != -1 ? jB - j : -1L;
                }
            }
            try {
                this.o = httpURLConnectionJ.getInputStream();
                if (zI) {
                    this.o = new GZIPInputStream(this.o);
                }
                this.p = true;
                f(bVar);
                try {
                    o(j, bVar);
                    return this.r;
                } catch (IOException e) {
                    g();
                    if (e instanceof HttpDataSource$HttpDataSourceException) {
                        throw ((HttpDataSource$HttpDataSourceException) e);
                    }
                    throw new HttpDataSource$HttpDataSourceException(e, bVar, 2000, 1);
                }
            } catch (IOException e2) {
                g();
                throw new HttpDataSource$HttpDataSourceException(e2, bVar, 2000, 1);
            }
        } catch (IOException e3) {
            g();
            throw HttpDataSource$HttpDataSourceException.createForIOException(e3, bVar, 1);
        }
    }

    @Override
    public void close() {
        try {
            InputStream inputStream = this.o;
            if (inputStream != null) {
                long j = this.r;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.s;
                }
                l(this.n, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new HttpDataSource$HttpDataSourceException(e, (com.google.android.exoplayer2.upstream.b) blb.j(this.m), 2000, 3);
                }
            }
            this.o = null;
            g();
            if (this.p) {
                this.p = false;
                d();
            }
        } catch (Throwable th) {
            this.o = null;
            g();
            if (this.p) {
                this.p = false;
                d();
            }
            throw th;
        }
    }

    public final void g() {
        HttpURLConnection httpURLConnection = this.n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                op5.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.n = null;
        }
    }

    @Override
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.n;
        return httpURLConnection == null ? ImmutableMap.of() : new c(httpURLConnection.getHeaderFields());
    }

    @Override
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final URL h(URL url, String str, com.google.android.exoplayer2.upstream.b bVar) throws HttpDataSource$HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource$HttpDataSourceException("Null location redirect", bVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, bVar, 2001, 1);
            }
            if (this.e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", bVar, 2001, 1);
        } catch (MalformedURLException e) {
            throw new HttpDataSource$HttpDataSourceException(e, bVar, 2001, 1);
        }
    }

    public final HttpURLConnection j(com.google.android.exoplayer2.upstream.b bVar) throws IOException {
        URL url = new URL(bVar.a.toString());
        int i = bVar.c;
        byte[] bArr = bVar.d;
        long j = bVar.g;
        long j2 = bVar.h;
        boolean zD = bVar.d(1);
        if (!this.e && !this.k) {
            return k(url, i, bArr, j, j2, zD, true, bVar.e);
        }
        int i2 = 0;
        URL urlH = url;
        int i3 = i;
        byte[] bArr2 = bArr;
        while (true) {
            int i4 = i2 + 1;
            if (i2 > 20) {
                throw new HttpDataSource$HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i4), bVar, 2001, 1);
            }
            long j3 = j;
            long j4 = j;
            int i5 = i3;
            URL url2 = urlH;
            long j5 = j2;
            HttpURLConnection httpURLConnectionK = k(urlH, i3, bArr2, j3, j2, zD, false, bVar.e);
            int responseCode = httpURLConnectionK.getResponseCode();
            String headerField = httpURLConnectionK.getHeaderField("Location");
            if ((i5 == 1 || i5 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionK.disconnect();
                urlH = h(url2, headerField, bVar);
                i3 = i5;
            } else {
                if (i5 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionK;
                }
                httpURLConnectionK.disconnect();
                if (this.k && responseCode == 302) {
                    i3 = i5;
                } else {
                    bArr2 = null;
                    i3 = 1;
                }
                urlH = h(url2, headerField, bVar);
            }
            i2 = i4;
            j = j4;
            j2 = j5;
        }
    }

    public final HttpURLConnection k(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) throws IOException {
        HttpURLConnection httpURLConnectionM = m(url);
        httpURLConnectionM.setConnectTimeout(this.f);
        httpURLConnectionM.setReadTimeout(this.g);
        HashMap map2 = new HashMap();
        gs4 gs4Var = this.i;
        if (gs4Var != null) {
            map2.putAll(gs4Var.a());
        }
        map2.putAll(this.j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionM.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = pt4.a(j, j2);
        if (strA != null) {
            httpURLConnectionM.setRequestProperty("Range", strA);
        }
        String str = this.h;
        if (str != null) {
            httpURLConnectionM.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionM.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, z ? "gzip" : "identity");
        httpURLConnectionM.setInstanceFollowRedirects(z2);
        httpURLConnectionM.setDoOutput(bArr != null);
        httpURLConnectionM.setRequestMethod(com.google.android.exoplayer2.upstream.b.c(i));
        if (bArr != null) {
            httpURLConnectionM.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionM.connect();
            OutputStream outputStream = httpURLConnectionM.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionM.connect();
        }
        return httpURLConnectionM;
    }

    public HttpURLConnection m(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    public final int n(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.r;
        if (j != -1) {
            long j2 = j - this.s;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = ((InputStream) blb.j(this.o)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.s += (long) i3;
        c(i3);
        return i3;
    }

    public final void o(long j, com.google.android.exoplayer2.upstream.b bVar) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((InputStream) blb.j(this.o)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), bVar, 2000, 1);
            }
            if (i == -1) {
                throw new HttpDataSource$HttpDataSourceException(bVar, 2008, 1);
            }
            j -= (long) i;
            c(i);
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource$HttpDataSourceException {
        try {
            return n(bArr, i, i2);
        } catch (IOException e) {
            throw HttpDataSource$HttpDataSourceException.createForIOException(e, (com.google.android.exoplayer2.upstream.b) blb.j(this.m), 2);
        }
    }

    public d(String str, int i, int i2, boolean z, gs4 gs4Var, he8 he8Var, boolean z2) {
        super(true);
        this.h = str;
        this.f = i;
        this.g = i2;
        this.e = z;
        this.i = gs4Var;
        this.l = he8Var;
        this.j = new gs4();
        this.k = z2;
    }
}
