package androidx.media3.datasource.cronet;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.u;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i;
import androidx.media3.common.util.l;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.base.n;
import com.google.common.primitives.Longs;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import w1.h;

public class CronetDataSource extends w1.a implements HttpDataSource {
    private IOException A;
    private boolean B;
    private volatile long C;

    private final CronetEngine f10559e;

    private final Executor f10560f;

    private final int f10561g;

    private final int f10562h;

    private final int f10563i;

    private final boolean f10564j;

    private final boolean f10565k;

    private final String f10566l;

    private final HttpDataSource.b f10567m;

    private final HttpDataSource.b f10568n;

    private final l f10569o;

    private final i f10570p;

    private final int f10571q;

    private final n f10572r;

    private final boolean f10573s;

    private boolean f10574t;

    private long f10575u;

    private UrlRequest f10576v;

    c f10577w;

    private h f10578x;

    private ByteBuffer f10579y;

    private UrlResponseInfo f10580z;

    class a extends UrlRequest.StatusListener {

        final int[] f10581a;

        final l f10582b;

        a(int[] iArr, l lVar) {
            this.f10581a = iArr;
            this.f10582b = lVar;
        }

        @Override
        public void onStatus(int i10) {
            this.f10581a[0] = i10;
            this.f10582b.f();
        }
    }

    public static final class b implements HttpDataSource.a {

        private final CronetEngine f10583a;

        private final Executor f10584b;

        private HttpDataSource.a f10587e;

        private n f10588f;

        private w1.n f10589g;

        private String f10590h;

        private boolean f10595m;

        private boolean f10596n;

        private boolean f10597o;

        private final HttpDataSource.b f10585c = new HttpDataSource.b();

        private final androidx.media3.datasource.c.b f10586d = null;

        private int f10591i = 3;

        private int f10592j = 8000;

        private int f10593k = 8000;

        private int f10594l = 32768;

        public b(CronetEngine cronetEngine, Executor executor) {
            this.f10583a = (CronetEngine) androidx.media3.common.util.a.e(cronetEngine);
            this.f10584b = executor;
        }

        @Override
        public HttpDataSource createDataSource() {
            if (this.f10583a == null) {
                HttpDataSource.a aVar = this.f10587e;
                return aVar != null ? aVar.createDataSource() : ((androidx.media3.datasource.c.b) androidx.media3.common.util.a.e(this.f10586d)).createDataSource();
            }
            CronetDataSource cronetDataSource = new CronetDataSource(this.f10583a, this.f10584b, this.f10591i, this.f10592j, this.f10593k, this.f10595m, this.f10596n, this.f10590h, this.f10585c, this.f10588f, this.f10597o, this.f10594l);
            w1.n nVar = this.f10589g;
            if (nVar != null) {
                cronetDataSource.c(nVar);
            }
            return cronetDataSource;
        }
    }

    final class c extends UrlRequest.Callback {

        private volatile boolean f10598a = false;

        c() {
        }

        public void a() {
            this.f10598a = true;
        }

        @Override
        public synchronized void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
            try {
                if (this.f10598a) {
                    return;
                }
                if ((cronetException instanceof NetworkException) && ((NetworkException) cronetException).getErrorCode() == 1) {
                    CronetDataSource.this.A = new UnknownHostException();
                } else {
                    CronetDataSource.this.A = cronetException;
                }
                CronetDataSource.this.f10569o.f();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
            if (this.f10598a) {
                return;
            }
            CronetDataSource.this.f10569o.f();
        }

        @Override
        public synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
            if (this.f10598a) {
                return;
            }
            androidx.media3.common.util.a.e(CronetDataSource.this.f10576v);
            androidx.media3.common.util.a.e(CronetDataSource.this.f10577w);
            h hVar = (h) androidx.media3.common.util.a.e(CronetDataSource.this.f10578x);
            int httpStatusCode = urlResponseInfo.getHttpStatusCode();
            if (hVar.f74099c == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
                CronetDataSource.this.A = new HttpDataSource.InvalidResponseCodeException(httpStatusCode, urlResponseInfo.getHttpStatusText(), null, urlResponseInfo.getAllHeaders(), hVar, a1.f10043f);
                CronetDataSource.this.f10569o.f();
                return;
            }
            if (CronetDataSource.this.f10564j) {
                CronetDataSource.this.F();
            }
            boolean z10 = CronetDataSource.this.f10573s && hVar.f74099c == 2 && httpStatusCode == 302;
            if (!z10 && !CronetDataSource.this.f10565k) {
                urlRequest.followRedirect();
                return;
            }
            String strC = CronetDataSource.C(urlResponseInfo.getAllHeaders().get("Set-Cookie"));
            if (!z10 && TextUtils.isEmpty(strC)) {
                urlRequest.followRedirect();
                return;
            }
            h hVarG = (z10 || hVar.f74099c != 2) ? hVar.g(Uri.parse(str)) : hVar.a().j(str).d(1).c(null).a();
            if (!TextUtils.isEmpty(strC)) {
                HashMap map = new HashMap();
                map.putAll(hVar.f74101e);
                map.put("Cookie", strC);
                hVarG = hVarG.a().e(map).a();
            }
            CronetDataSource.this.w();
            try {
                CronetDataSource.this.x(hVarG);
                CronetDataSource.this.f10576v.start();
            } catch (IOException e10) {
                CronetDataSource.this.A = e10;
            }
        }

        @Override
        public synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (this.f10598a) {
                return;
            }
            CronetDataSource.this.f10580z = urlResponseInfo;
            CronetDataSource.this.f10569o.f();
        }

        @Override
        public synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (this.f10598a) {
                return;
            }
            CronetDataSource.this.B = true;
            CronetDataSource.this.f10569o.f();
        }
    }

    static {
        u.a("media3.datasource.cronet");
    }

    protected CronetDataSource(CronetEngine cronetEngine, Executor executor, int i10, int i11, int i12, boolean z10, boolean z11, String str, HttpDataSource.b bVar, n nVar, boolean z12, int i13) {
        super(true);
        this.f10559e = (CronetEngine) androidx.media3.common.util.a.e(cronetEngine);
        this.f10560f = (Executor) androidx.media3.common.util.a.e(executor);
        this.f10561g = i10;
        this.f10562h = i11;
        this.f10563i = i12;
        this.f10564j = z10;
        this.f10565k = z11;
        this.f10566l = str;
        this.f10567m = bVar;
        this.f10572r = nVar;
        this.f10573s = z12;
        this.f10570p = i.f10075a;
        this.f10571q = i13;
        this.f10568n = new HttpDataSource.b();
        this.f10569o = new l();
    }

    private static int A(UrlRequest urlRequest) {
        l lVar = new l();
        int[] iArr = new int[1];
        urlRequest.getStatus(new a(iArr, lVar));
        lVar.a();
        return iArr[0];
    }

    private static boolean B(UrlResponseInfo urlResponseInfo) {
        for (Map.Entry<String, String> entry : urlResponseInfo.getAllHeadersAsList()) {
            if (entry.getKey().equalsIgnoreCase(HttpHeaders.CONTENT_ENCODING)) {
                return !entry.getValue().equalsIgnoreCase("identity");
            }
        }
        return false;
    }

    public static String C(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return TextUtils.join(";", list);
    }

    private void D(ByteBuffer byteBuffer, h hVar) throws HttpDataSource.HttpDataSourceException {
        ((UrlRequest) a1.i(this.f10576v)).read(byteBuffer);
        try {
            if (!this.f10569o.b(this.f10563i)) {
                throw new SocketTimeoutException();
            }
        } catch (InterruptedException unused) {
            if (byteBuffer == this.f10579y) {
                this.f10579y = null;
            }
            Thread.currentThread().interrupt();
            this.A = new InterruptedIOException();
        } catch (SocketTimeoutException e10) {
            if (byteBuffer == this.f10579y) {
                this.f10579y = null;
            }
            this.A = new HttpDataSource.HttpDataSourceException(e10, hVar, 2002, 2);
        }
        IOException iOException = this.A;
        if (iOException != null) {
            if (!(iOException instanceof HttpDataSource.HttpDataSourceException)) {
                throw HttpDataSource.HttpDataSourceException.createForIOException(iOException, hVar, 2);
            }
            throw ((HttpDataSource.HttpDataSourceException) iOException);
        }
    }

    private byte[] E() throws HttpDataSource.HttpDataSourceException {
        byte[] bArrCopyOf = a1.f10043f;
        ByteBuffer byteBufferZ = z();
        while (!this.B) {
            this.f10569o.d();
            byteBufferZ.clear();
            D(byteBufferZ, (h) a1.i(this.f10578x));
            byteBufferZ.flip();
            if (byteBufferZ.remaining() > 0) {
                int length = bArrCopyOf.length;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length + byteBufferZ.remaining());
                byteBufferZ.get(bArrCopyOf, length, byteBufferZ.remaining());
            }
        }
        return bArrCopyOf;
    }

    public void F() {
        this.C = this.f10570p.elapsedRealtime() + ((long) this.f10562h);
    }

    private void G(long j10, h hVar) throws HttpDataSource.HttpDataSourceException {
        if (j10 == 0) {
            return;
        }
        ByteBuffer byteBufferZ = z();
        while (j10 > 0) {
            try {
                this.f10569o.d();
                byteBufferZ.clear();
                D(byteBufferZ, hVar);
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (this.B) {
                    throw new OpenException(hVar, 2008, 14);
                }
                byteBufferZ.flip();
                androidx.media3.common.util.a.g(byteBufferZ.hasRemaining());
                int iMin = (int) Math.min(byteBufferZ.remaining(), j10);
                byteBufferZ.position(byteBufferZ.position() + iMin);
                j10 -= (long) iMin;
            } catch (IOException e10) {
                if (e10 instanceof HttpDataSource.HttpDataSourceException) {
                    throw ((HttpDataSource.HttpDataSourceException) e10);
                }
                throw new OpenException(e10, hVar, e10 instanceof SocketTimeoutException ? 2002 : 2001, 14);
            }
        }
    }

    private boolean u() {
        long jElapsedRealtime = this.f10570p.elapsedRealtime();
        boolean zB = false;
        while (!zB && jElapsedRealtime < this.C) {
            zB = this.f10569o.b((this.C - jElapsedRealtime) + 5);
            jElapsedRealtime = this.f10570p.elapsedRealtime();
        }
        return zB;
    }

    public void w() {
        UrlRequest urlRequest = this.f10576v;
        if (urlRequest != null) {
            urlRequest.cancel();
            this.f10576v = null;
        }
        c cVar = this.f10577w;
        if (cVar != null) {
            cVar.a();
            this.f10577w = null;
        }
    }

    public void x(h hVar) {
        this.f10577w = new c();
        this.f10576v = v(hVar).build();
    }

    private static String y(Map map, String str) {
        List list = (List) map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    private ByteBuffer z() {
        if (this.f10579y == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.f10571q);
            this.f10579y = byteBufferAllocateDirect;
            byteBufferAllocateDirect.limit(0);
        }
        return this.f10579y;
    }

    @Override
    public long a(h hVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrE;
        String strY;
        androidx.media3.common.util.a.e(hVar);
        androidx.media3.common.util.a.g(!this.f10574t);
        this.f10569o.d();
        F();
        this.f10578x = hVar;
        try {
            x(hVar);
            UrlRequest urlRequest = this.f10576v;
            urlRequest.start();
            f(hVar);
            try {
                boolean zU = u();
                IOException iOException = this.A;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message == null || !com.google.common.base.a.e(message).contains("err_cleartext_not_permitted")) {
                        throw new OpenException(iOException, hVar, 2001, A(urlRequest));
                    }
                    throw new HttpDataSource.CleartextNotPermittedException(iOException, hVar);
                }
                if (!zU) {
                    throw new OpenException(new SocketTimeoutException(), hVar, 2002, A(urlRequest));
                }
                UrlResponseInfo urlResponseInfo = (UrlResponseInfo) androidx.media3.common.util.a.e(this.f10580z);
                int httpStatusCode = urlResponseInfo.getHttpStatusCode();
                Map<String, List<String>> allHeaders = urlResponseInfo.getAllHeaders();
                long j10 = 0;
                if (httpStatusCode < 200 || httpStatusCode > 299) {
                    if (httpStatusCode == 416) {
                        if (hVar.f74103g == w1.i.c(y(allHeaders, "Content-Range"))) {
                            this.f10574t = true;
                            g(hVar);
                            long j11 = hVar.f74104h;
                            if (j11 != -1) {
                                return j11;
                            }
                            return 0L;
                        }
                    }
                    try {
                        bArrE = E();
                    } catch (IOException unused) {
                        bArrE = a1.f10043f;
                    }
                    throw new HttpDataSource.InvalidResponseCodeException(httpStatusCode, urlResponseInfo.getHttpStatusText(), httpStatusCode == 416 ? new DataSourceException(2008) : null, allHeaders, hVar, bArrE);
                }
                n nVar = this.f10572r;
                if (nVar != null && (strY = y(allHeaders, HttpHeaders.CONTENT_TYPE)) != null && !nVar.apply(strY)) {
                    throw new HttpDataSource.InvalidContentTypeException(strY, hVar);
                }
                if (httpStatusCode == 200) {
                    long j12 = hVar.f74103g;
                    if (j12 != 0) {
                        j10 = j12;
                    }
                }
                if (B(urlResponseInfo)) {
                    this.f10575u = hVar.f74104h;
                } else {
                    long j13 = hVar.f74104h;
                    if (j13 != -1) {
                        this.f10575u = j13;
                    } else {
                        long jB = w1.i.b(y(allHeaders, HttpHeaders.CONTENT_LENGTH), y(allHeaders, "Content-Range"));
                        this.f10575u = jB != -1 ? jB - j10 : -1L;
                    }
                }
                this.f10574t = true;
                g(hVar);
                G(j10, hVar);
                return this.f10575u;
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                throw new OpenException(new InterruptedIOException(), hVar, 1004, -1);
            }
        } catch (IOException e10) {
            if (e10 instanceof HttpDataSource.HttpDataSourceException) {
                throw ((HttpDataSource.HttpDataSourceException) e10);
            }
            throw new OpenException(e10, hVar, 2000, 0);
        }
    }

    @Override
    public synchronized void close() {
        try {
            w();
            ByteBuffer byteBuffer = this.f10579y;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.f10578x = null;
            this.f10580z = null;
            this.A = null;
            this.B = false;
            if (this.f10574t) {
                this.f10574t = false;
                e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public Map getResponseHeaders() {
        UrlResponseInfo urlResponseInfo = this.f10580z;
        return urlResponseInfo == null ? Collections.emptyMap() : urlResponseInfo.getAllHeaders();
    }

    @Override
    public Uri getUri() {
        UrlResponseInfo urlResponseInfo = this.f10580z;
        if (urlResponseInfo != null) {
            return Uri.parse(urlResponseInfo.getUrl());
        }
        h hVar = this.f10578x;
        if (hVar != null) {
            return hVar.f74097a;
        }
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource.HttpDataSourceException {
        androidx.media3.common.util.a.g(this.f10574t);
        if (i11 == 0) {
            return 0;
        }
        if (this.f10575u == 0) {
            return -1;
        }
        ByteBuffer byteBufferZ = z();
        if (!byteBufferZ.hasRemaining()) {
            this.f10569o.d();
            byteBufferZ.clear();
            D(byteBufferZ, (h) a1.i(this.f10578x));
            if (this.B) {
                this.f10575u = 0L;
                return -1;
            }
            byteBufferZ.flip();
            androidx.media3.common.util.a.g(byteBufferZ.hasRemaining());
        }
        long j10 = this.f10575u;
        if (j10 == -1) {
            j10 = Long.MAX_VALUE;
        }
        int i12 = (int) Longs.i(j10, byteBufferZ.remaining(), i11);
        byteBufferZ.get(bArr, i10, i12);
        long j11 = this.f10575u;
        if (j11 != -1) {
            this.f10575u = j11 - ((long) i12);
        }
        d(i12);
        return i12;
    }

    protected UrlRequest.Builder v(h hVar) throws OpenException {
        UrlRequest.Builder builderAllowDirectExecutor = this.f10559e.newUrlRequestBuilder(hVar.f74097a.toString(), this.f10577w, this.f10560f).setPriority(this.f10561g).allowDirectExecutor();
        HashMap map = new HashMap();
        HttpDataSource.b bVar = this.f10567m;
        if (bVar != null) {
            map.putAll(bVar.b());
        }
        map.putAll(this.f10568n.b());
        map.putAll(hVar.f74101e);
        for (Map.Entry entry : map.entrySet()) {
            builderAllowDirectExecutor.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        if (hVar.f74100d != null && !map.containsKey(HttpHeaders.CONTENT_TYPE)) {
            throw new OpenException("HTTP request with non-empty body must set Content-Type", hVar, 1004, 0);
        }
        String strA = w1.i.a(hVar.f74103g, hVar.f74104h);
        if (strA != null) {
            builderAllowDirectExecutor.addHeader("Range", strA);
        }
        String str = this.f10566l;
        if (str != null) {
            builderAllowDirectExecutor.addHeader("User-Agent", str);
        }
        builderAllowDirectExecutor.setHttpMethod(hVar.b());
        byte[] bArr = hVar.f74100d;
        if (bArr != null) {
            builderAllowDirectExecutor.setUploadDataProvider(new androidx.media3.datasource.cronet.a(bArr), this.f10560f);
        }
        return builderAllowDirectExecutor;
    }

    public static final class OpenException extends HttpDataSource.HttpDataSourceException {
        public final int cronetConnectionStatus;

        @Deprecated
        public OpenException(IOException iOException, h hVar, int i10) {
            super(iOException, hVar, 2000, 1);
            this.cronetConnectionStatus = i10;
        }

        public OpenException(IOException iOException, h hVar, int i10, int i11) {
            super(iOException, hVar, i10, 1);
            this.cronetConnectionStatus = i11;
        }

        @Deprecated
        public OpenException(String str, h hVar, int i10) {
            super(str, hVar, 2000, 1);
            this.cronetConnectionStatus = i10;
        }

        public OpenException(String str, h hVar, int i10, int i11) {
            super(str, hVar, i10, 1);
            this.cronetConnectionStatus = i11;
        }

        public OpenException(h hVar, int i10, int i11) {
            super(hVar, i10, 1);
            this.cronetConnectionStatus = i11;
        }
    }
}
