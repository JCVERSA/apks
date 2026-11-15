package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.base.n;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.collect.n2;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
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
import w1.h;
import w1.i;

public class c extends w1.a implements HttpDataSource {

    private final boolean f10420e;

    private final boolean f10421f;

    private final int f10422g;

    private final int f10423h;

    private final String f10424i;

    private final HttpDataSource.b f10425j;

    private final HttpDataSource.b f10426k;

    private final n f10427l;

    private final boolean f10428m;

    private h f10429n;

    private HttpURLConnection f10430o;

    private InputStream f10431p;

    private boolean f10432q;

    private int f10433r;

    private long f10434s;

    private long f10435t;

    public static final class b implements HttpDataSource.a {

        private w1.n f10437b;

        private n f10438c;

        private String f10439d;

        private boolean f10442g;

        private boolean f10443h;

        private boolean f10444i;

        private final HttpDataSource.b f10436a = new HttpDataSource.b();

        private int f10440e = 8000;

        private int f10441f = 8000;

        @Override
        public c createDataSource() {
            c cVar = new c(this.f10439d, this.f10440e, this.f10441f, this.f10442g, this.f10443h, this.f10436a, this.f10438c, this.f10444i);
            w1.n nVar = this.f10437b;
            if (nVar != null) {
                cVar.c(nVar);
            }
            return cVar;
        }

        public b b(Map map) {
            this.f10436a.a(map);
            return this;
        }

        public b c(String str) {
            this.f10439d = str;
            return this;
        }
    }

    static class C0086c extends n2 {

        private final Map f10445a;

        public C0086c(Map map) {
            this.f10445a = map;
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
            return Sets.b(super.entrySet(), new n() {
                @Override
                public final boolean apply(Object obj) {
                    return c.C0086c.o((Map.Entry) obj);
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
            return Sets.b(super.keySet(), new n() {
                @Override
                public final boolean apply(Object obj) {
                    return c.C0086c.p((String) obj);
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
            return this.f10445a;
        }
    }

    private void h() {
        HttpURLConnection httpURLConnection = this.f10430o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                u.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
        }
    }

    private URL i(URL url, String str, h hVar) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", hVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException("Unsupported protocol redirect: " + protocol, hVar, 2001, 1);
            }
            if (this.f10420e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            if (this.f10421f) {
                try {
                    return new URL(url2.toString().replaceFirst(protocol, url.getProtocol()));
                } catch (MalformedURLException e10) {
                    throw new HttpDataSource.HttpDataSourceException(e10, hVar, 2001, 1);
                }
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", hVar, 2001, 1);
        } catch (MalformedURLException e11) {
            throw new HttpDataSource.HttpDataSourceException(e11, hVar, 2001, 1);
        }
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection k(URL url, int i10, byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map map) throws IOException {
        HttpURLConnection httpURLConnectionM = m(url);
        httpURLConnectionM.setConnectTimeout(this.f10422g);
        httpURLConnectionM.setReadTimeout(this.f10423h);
        HashMap map2 = new HashMap();
        HttpDataSource.b bVar = this.f10425j;
        if (bVar != null) {
            map2.putAll(bVar.b());
        }
        map2.putAll(this.f10426k.b());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionM.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = i.a(j10, j11);
        if (strA != null) {
            httpURLConnectionM.setRequestProperty("Range", strA);
        }
        String str = this.f10424i;
        if (str != null) {
            httpURLConnectionM.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionM.setRequestProperty("Accept-Encoding", z10 ? "gzip" : "identity");
        httpURLConnectionM.setInstanceFollowRedirects(z11);
        httpURLConnectionM.setDoOutput(bArr != null);
        httpURLConnectionM.setRequestMethod(h.c(i10));
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

    private HttpURLConnection l(h hVar) throws IOException {
        URL url = new URL(hVar.f74097a.toString());
        int i10 = hVar.f74099c;
        byte[] bArr = hVar.f74100d;
        long j10 = hVar.f74103g;
        long j11 = hVar.f74104h;
        boolean zD = hVar.d(1);
        if (!this.f10420e && !this.f10421f && !this.f10428m) {
            return k(url, i10, bArr, j10, j11, zD, true, hVar.f74101e);
        }
        int i11 = 0;
        URL urlI = url;
        int i12 = i10;
        byte[] bArr2 = bArr;
        while (true) {
            int i13 = i11 + 1;
            if (i11 > 20) {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i13), hVar, 2001, 1);
            }
            long j12 = j10;
            long j13 = j10;
            int i14 = i12;
            URL url2 = urlI;
            long j14 = j11;
            HttpURLConnection httpURLConnectionK = k(urlI, i12, bArr2, j12, j11, zD, false, hVar.f74101e);
            int responseCode = httpURLConnectionK.getResponseCode();
            String headerField = httpURLConnectionK.getHeaderField(HttpHeaders.LOCATION);
            if ((i14 == 1 || i14 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionK.disconnect();
                urlI = i(url2, headerField, hVar);
                i12 = i14;
            } else {
                if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionK;
                }
                httpURLConnectionK.disconnect();
                if (this.f10428m && responseCode == 302) {
                    i12 = i14;
                } else {
                    bArr2 = null;
                    i12 = 1;
                }
                urlI = i(url2, headerField, hVar);
            }
            i11 = i13;
            j10 = j13;
            j11 = j14;
        }
    }

    private int n(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10434s;
        if (j10 != -1) {
            long j11 = j10 - this.f10435t;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int i12 = ((InputStream) a1.i(this.f10431p)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.f10435t += (long) i12;
        d(i12);
        return i12;
    }

    private void o(long j10, h hVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int i10 = ((InputStream) a1.i(this.f10431p)).read(bArr, 0, (int) Math.min(j10, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), hVar, 2000, 1);
            }
            if (i10 == -1) {
                throw new HttpDataSource.HttpDataSourceException(hVar, 2008, 1);
            }
            j10 -= (long) i10;
            d(i10);
        }
    }

    @Override
    public long a(h hVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrB;
        this.f10429n = hVar;
        long j10 = 0;
        this.f10435t = 0L;
        this.f10434s = 0L;
        f(hVar);
        try {
            HttpURLConnection httpURLConnectionL = l(hVar);
            this.f10430o = httpURLConnectionL;
            this.f10433r = httpURLConnectionL.getResponseCode();
            String responseMessage = httpURLConnectionL.getResponseMessage();
            int i10 = this.f10433r;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionL.getHeaderFields();
                if (this.f10433r == 416) {
                    if (hVar.f74103g == i.c(httpURLConnectionL.getHeaderField("Content-Range"))) {
                        this.f10432q = true;
                        g(hVar);
                        long j11 = hVar.f74104h;
                        if (j11 != -1) {
                            return j11;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionL.getErrorStream();
                try {
                    bArrB = errorStream != null ? com.google.common.io.a.b(errorStream) : a1.f10043f;
                } catch (IOException unused) {
                    bArrB = a1.f10043f;
                }
                byte[] bArr = bArrB;
                h();
                throw new HttpDataSource.InvalidResponseCodeException(this.f10433r, responseMessage, this.f10433r == 416 ? new DataSourceException(2008) : null, headerFields, hVar, bArr);
            }
            String contentType = httpURLConnectionL.getContentType();
            n nVar = this.f10427l;
            if (nVar != null && !nVar.apply(contentType)) {
                h();
                throw new HttpDataSource.InvalidContentTypeException(contentType, hVar);
            }
            if (this.f10433r == 200) {
                long j12 = hVar.f74103g;
                if (j12 != 0) {
                    j10 = j12;
                }
            }
            boolean zJ = j(httpURLConnectionL);
            if (zJ) {
                this.f10434s = hVar.f74104h;
            } else {
                long j13 = hVar.f74104h;
                if (j13 != -1) {
                    this.f10434s = j13;
                } else {
                    long jB = i.b(httpURLConnectionL.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionL.getHeaderField("Content-Range"));
                    this.f10434s = jB != -1 ? jB - j10 : -1L;
                }
            }
            try {
                this.f10431p = httpURLConnectionL.getInputStream();
                if (zJ) {
                    this.f10431p = new GZIPInputStream(this.f10431p);
                }
                this.f10432q = true;
                g(hVar);
                try {
                    o(j10, hVar);
                    return this.f10434s;
                } catch (IOException e10) {
                    h();
                    if (e10 instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e10);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e10, hVar, 2000, 1);
                }
            } catch (IOException e11) {
                h();
                throw new HttpDataSource.HttpDataSourceException(e11, hVar, 2000, 1);
            }
        } catch (IOException e12) {
            h();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e12, hVar, 1);
        }
    }

    @Override
    public void close() {
        try {
            InputStream inputStream = this.f10431p;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource.HttpDataSourceException(e10, (h) a1.i(this.f10429n), 2000, 3);
                }
            }
            this.f10431p = null;
            h();
            if (this.f10432q) {
                this.f10432q = false;
                e();
            }
            this.f10430o = null;
            this.f10429n = null;
        } catch (Throwable th2) {
            this.f10431p = null;
            h();
            if (this.f10432q) {
                this.f10432q = false;
                e();
            }
            this.f10430o = null;
            this.f10429n = null;
            throw th2;
        }
    }

    @Override
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f10430o;
        return httpURLConnection == null ? ImmutableMap.of() : new C0086c(httpURLConnection.getHeaderFields());
    }

    @Override
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f10430o;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        h hVar = this.f10429n;
        if (hVar != null) {
            return hVar.f74097a;
        }
        return null;
    }

    HttpURLConnection m(URL url) {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource.HttpDataSourceException {
        try {
            return n(bArr, i10, i11);
        } catch (IOException e10) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e10, (h) a1.i(this.f10429n), 2);
        }
    }

    private c(String str, int i10, int i11, boolean z10, boolean z11, HttpDataSource.b bVar, n nVar, boolean z12) {
        super(true);
        this.f10424i = str;
        this.f10422g = i10;
        this.f10423h = i11;
        this.f10420e = z10;
        this.f10421f = z11;
        if (z10 && z11) {
            throw new IllegalArgumentException("crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true");
        }
        this.f10425j = bVar;
        this.f10427l = nVar;
        this.f10426k = new HttpDataSource.b();
        this.f10428m = z12;
    }
}
