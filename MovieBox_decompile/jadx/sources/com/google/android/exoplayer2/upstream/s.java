package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.collect.n2;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

public class s extends f implements k {

    private final boolean f26735e;

    private final int f26736f;

    private final int f26737g;

    private final String f26738h;

    private final w f26739i;

    private final w f26740j;

    private final boolean f26741k;

    private com.google.common.base.n f26742l;

    private n f26743m;

    private HttpURLConnection f26744n;

    private InputStream f26745o;

    private boolean f26746p;

    private int f26747q;

    private long f26748r;

    private long f26749s;

    public static final class b implements k.a {

        private k0 f26751b;

        private com.google.common.base.n f26752c;

        private String f26753d;

        private boolean f26756g;

        private boolean f26757h;

        private final w f26750a = new w();

        private int f26754e = 8000;

        private int f26755f = 8000;

        @Override
        public s createDataSource() {
            s sVar = new s(this.f26753d, this.f26754e, this.f26755f, this.f26756g, this.f26750a, this.f26752c, this.f26757h);
            k0 k0Var = this.f26751b;
            if (k0Var != null) {
                sVar.e(k0Var);
            }
            return sVar;
        }

        public b b(String str) {
            this.f26753d = str;
            return this;
        }
    }

    static class c extends n2 {

        private final Map f26758a;

        public c(Map map) {
            this.f26758a = map;
        }

        public static boolean o(Map.Entry entry) {
            return entry.getKey() != null;
        }

        public static boolean p(String str) {
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
            return Sets.b(super.entrySet(), new com.google.common.base.n() {
                @Override
                public final boolean apply(Object obj) {
                    return s.c.o((Map.Entry) obj);
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
            return Sets.b(super.keySet(), new com.google.common.base.n() {
                @Override
                public final boolean apply(Object obj) {
                    return s.c.p((String) obj);
                }
            });
        }

        @Override
        public List get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override
        public Map l() {
            return this.f26758a;
        }
    }

    private void l() {
        HttpURLConnection httpURLConnection = this.f26744n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                com.google.android.exoplayer2.util.s.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f26744n = null;
        }
    }

    private URL m(URL url, String str, n nVar) throws HttpDataSource$HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource$HttpDataSourceException("Null location redirect", nVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, nVar, 2001, 1);
            }
            if (this.f26735e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", nVar, 2001, 1);
        } catch (MalformedURLException e10) {
            throw new HttpDataSource$HttpDataSourceException(e10, nVar, 2001, 1);
        }
    }

    private static boolean n(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection o(n nVar) throws IOException {
        URL url = new URL(nVar.f26665a.toString());
        int i10 = nVar.f26667c;
        byte[] bArr = nVar.f26668d;
        long j10 = nVar.f26671g;
        long j11 = nVar.f26672h;
        boolean zD = nVar.d(1);
        if (!this.f26735e && !this.f26741k) {
            return p(url, i10, bArr, j10, j11, zD, true, nVar.f26669e);
        }
        int i11 = 0;
        URL urlM = url;
        int i12 = i10;
        byte[] bArr2 = bArr;
        while (true) {
            int i13 = i11 + 1;
            if (i11 > 20) {
                throw new HttpDataSource$HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i13), nVar, 2001, 1);
            }
            long j12 = j10;
            long j13 = j10;
            int i14 = i12;
            URL url2 = urlM;
            long j14 = j11;
            HttpURLConnection httpURLConnectionP = p(urlM, i12, bArr2, j12, j11, zD, false, nVar.f26669e);
            int responseCode = httpURLConnectionP.getResponseCode();
            String headerField = httpURLConnectionP.getHeaderField(HttpHeaders.LOCATION);
            if ((i14 == 1 || i14 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionP.disconnect();
                urlM = m(url2, headerField, nVar);
                i12 = i14;
            } else {
                if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionP;
                }
                httpURLConnectionP.disconnect();
                if (this.f26741k && responseCode == 302) {
                    i12 = i14;
                } else {
                    bArr2 = null;
                    i12 = 1;
                }
                urlM = m(url2, headerField, nVar);
            }
            i11 = i13;
            j10 = j13;
            j11 = j14;
        }
    }

    private HttpURLConnection p(URL url, int i10, byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map map) throws IOException {
        HttpURLConnection httpURLConnectionR = r(url);
        httpURLConnectionR.setConnectTimeout(this.f26736f);
        httpURLConnectionR.setReadTimeout(this.f26737g);
        HashMap map2 = new HashMap();
        w wVar = this.f26739i;
        if (wVar != null) {
            map2.putAll(wVar.a());
        }
        map2.putAll(this.f26740j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionR.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = x.a(j10, j11);
        if (strA != null) {
            httpURLConnectionR.setRequestProperty("Range", strA);
        }
        String str = this.f26738h;
        if (str != null) {
            httpURLConnectionR.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionR.setRequestProperty("Accept-Encoding", z10 ? "gzip" : "identity");
        httpURLConnectionR.setInstanceFollowRedirects(z11);
        httpURLConnectionR.setDoOutput(bArr != null);
        httpURLConnectionR.setRequestMethod(n.c(i10));
        if (bArr != null) {
            httpURLConnectionR.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionR.connect();
            OutputStream outputStream = httpURLConnectionR.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionR.connect();
        }
        return httpURLConnectionR;
    }

    private static void q(HttpURLConnection httpURLConnection, long j10) {
        int i10;
        if (httpURLConnection == null || (i10 = p0.f26854a) < 19 || i10 > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j10 == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j10 <= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) com.google.android.exoplayer2.util.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    private int s(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f26748r;
        if (j10 != -1) {
            long j11 = j10 - this.f26749s;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int i12 = ((InputStream) p0.j(this.f26745o)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.f26749s += (long) i12;
        h(i12);
        return i12;
    }

    private void t(long j10, n nVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int i10 = ((InputStream) p0.j(this.f26745o)).read(bArr, 0, (int) Math.min(j10, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), nVar, 2000, 1);
            }
            if (i10 == -1) {
                throw new HttpDataSource$HttpDataSourceException(nVar, 2008, 1);
            }
            j10 -= (long) i10;
            h(i10);
        }
    }

    @Override
    public long a(final n nVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArrY0;
        this.f26743m = nVar;
        long j10 = 0;
        this.f26749s = 0L;
        this.f26748r = 0L;
        j(nVar);
        try {
            HttpURLConnection httpURLConnectionO = o(nVar);
            this.f26744n = httpURLConnectionO;
            this.f26747q = httpURLConnectionO.getResponseCode();
            String responseMessage = httpURLConnectionO.getResponseMessage();
            int i10 = this.f26747q;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionO.getHeaderFields();
                if (this.f26747q == 416) {
                    if (nVar.f26671g == x.c(httpURLConnectionO.getHeaderField("Content-Range"))) {
                        this.f26746p = true;
                        k(nVar);
                        long j11 = nVar.f26672h;
                        if (j11 != -1) {
                            return j11;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionO.getErrorStream();
                try {
                    bArrY0 = errorStream != null ? p0.Y0(errorStream) : p0.f26859f;
                } catch (IOException unused) {
                    bArrY0 = p0.f26859f;
                }
                byte[] bArr = bArrY0;
                l();
                throw new HttpDataSource$InvalidResponseCodeException(this.f26747q, responseMessage, this.f26747q == 416 ? new DataSourceException(2008) : null, headerFields, nVar, bArr);
            }
            final String contentType = httpURLConnectionO.getContentType();
            com.google.common.base.n nVar2 = this.f26742l;
            if (nVar2 != null && !nVar2.apply(contentType)) {
                l();
                throw new HttpDataSource$HttpDataSourceException(contentType, nVar) {
                    public final String contentType;

                    {
                        super("Invalid content type: " + contentType, nVar, 2003, 1);
                        this.contentType = contentType;
                    }
                };
            }
            if (this.f26747q == 200) {
                long j12 = nVar.f26671g;
                if (j12 != 0) {
                    j10 = j12;
                }
            }
            boolean zN = n(httpURLConnectionO);
            if (zN) {
                this.f26748r = nVar.f26672h;
            } else {
                long j13 = nVar.f26672h;
                if (j13 != -1) {
                    this.f26748r = j13;
                } else {
                    long jB = x.b(httpURLConnectionO.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionO.getHeaderField("Content-Range"));
                    this.f26748r = jB != -1 ? jB - j10 : -1L;
                }
            }
            try {
                this.f26745o = httpURLConnectionO.getInputStream();
                if (zN) {
                    this.f26745o = new GZIPInputStream(this.f26745o);
                }
                this.f26746p = true;
                k(nVar);
                try {
                    t(j10, nVar);
                    return this.f26748r;
                } catch (IOException e10) {
                    l();
                    if (e10 instanceof HttpDataSource$HttpDataSourceException) {
                        throw ((HttpDataSource$HttpDataSourceException) e10);
                    }
                    throw new HttpDataSource$HttpDataSourceException(e10, nVar, 2000, 1);
                }
            } catch (IOException e11) {
                l();
                throw new HttpDataSource$HttpDataSourceException(e11, nVar, 2000, 1);
            }
        } catch (IOException e12) {
            l();
            throw HttpDataSource$HttpDataSourceException.createForIOException(e12, nVar, 1);
        }
    }

    @Override
    public void close() {
        try {
            InputStream inputStream = this.f26745o;
            if (inputStream != null) {
                long j10 = this.f26748r;
                long j11 = -1;
                if (j10 != -1) {
                    j11 = j10 - this.f26749s;
                }
                q(this.f26744n, j11);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource$HttpDataSourceException(e10, (n) p0.j(this.f26743m), 2000, 3);
                }
            }
            this.f26745o = null;
            l();
            if (this.f26746p) {
                this.f26746p = false;
                i();
            }
        } catch (Throwable th2) {
            this.f26745o = null;
            l();
            if (this.f26746p) {
                this.f26746p = false;
                i();
            }
            throw th2;
        }
    }

    @Override
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f26744n;
        return httpURLConnection == null ? ImmutableMap.of() : new c(httpURLConnection.getHeaderFields());
    }

    @Override
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f26744n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    HttpURLConnection r(URL url) {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource$HttpDataSourceException {
        try {
            return s(bArr, i10, i11);
        } catch (IOException e10) {
            throw HttpDataSource$HttpDataSourceException.createForIOException(e10, (n) p0.j(this.f26743m), 2);
        }
    }

    @Deprecated
    public s() {
        this(null, 8000, 8000);
    }

    public s(String str, int i10, int i11) {
        this(str, i10, i11, false, null);
    }

    public s(String str, int i10, int i11, boolean z10, w wVar) {
        this(str, i10, i11, z10, wVar, null, false);
    }

    private s(String str, int i10, int i11, boolean z10, w wVar, com.google.common.base.n nVar, boolean z11) {
        super(true);
        this.f26738h = str;
        this.f26736f = i10;
        this.f26737g = i11;
        this.f26735e = z10;
        this.f26739i = wVar;
        this.f26742l = nVar;
        this.f26740j = new w();
        this.f26741k = z11;
    }
}
