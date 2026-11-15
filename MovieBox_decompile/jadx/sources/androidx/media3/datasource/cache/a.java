package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.FileDataSource;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import java.io.File;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;

public final class a implements androidx.media3.datasource.a {

    private final Cache f10471a;

    private final androidx.media3.datasource.a f10472b;

    private final androidx.media3.datasource.a f10473c;

    private final androidx.media3.datasource.a f10474d;

    private final g f10475e;

    private final boolean f10476f;

    private final boolean f10477g;

    private final boolean f10478h;

    private Uri f10479i;

    private w1.h f10480j;

    private w1.h f10481k;

    private androidx.media3.datasource.a f10482l;

    private long f10483m;

    private long f10484n;

    private long f10485o;

    private h f10486p;

    private boolean f10487q;

    private boolean f10488r;

    private long f10489s;

    private long f10490t;

    public interface b {
    }

    public static final class c implements androidx.media3.datasource.a.InterfaceC0085a {

        private Cache f10491a;

        private w1.d.a f10493c;

        private boolean f10495e;

        private androidx.media3.datasource.a.InterfaceC0085a f10496f;

        private PriorityTaskManager f10497g;

        private int f10498h;

        private int f10499i;

        private androidx.media3.datasource.a.InterfaceC0085a f10492b = new FileDataSource.a();

        private g f10494d = g.f10505a;

        private a d(androidx.media3.datasource.a aVar, int i10, int i11) {
            w1.d dVarCreateDataSink;
            Cache cache = (Cache) androidx.media3.common.util.a.e(this.f10491a);
            if (this.f10495e || aVar == null) {
                dVarCreateDataSink = null;
            } else {
                w1.d.a aVar2 = this.f10493c;
                dVarCreateDataSink = aVar2 != null ? aVar2.createDataSink() : new CacheDataSink.a().a(cache).createDataSink();
            }
            return new a(cache, aVar, this.f10492b.createDataSource(), dVarCreateDataSink, this.f10494d, i10, this.f10497g, i11, null);
        }

        @Override
        public a createDataSource() {
            androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a = this.f10496f;
            return d(interfaceC0085a != null ? interfaceC0085a.createDataSource() : null, this.f10499i, this.f10498h);
        }

        public a b() {
            androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a = this.f10496f;
            return d(interfaceC0085a != null ? interfaceC0085a.createDataSource() : null, this.f10499i | 1, -4000);
        }

        public a c() {
            return d(null, this.f10499i | 1, -4000);
        }

        public Cache e() {
            return this.f10491a;
        }

        public g f() {
            return this.f10494d;
        }

        public PriorityTaskManager g() {
            return this.f10497g;
        }

        public c h(Cache cache) {
            this.f10491a = cache;
            return this;
        }

        public c i(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this.f10496f = interfaceC0085a;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d() {
        androidx.media3.datasource.a aVar = this.f10482l;
        if (aVar == null) {
            return;
        }
        try {
            aVar.close();
        } finally {
            this.f10481k = null;
            this.f10482l = null;
            h hVar = this.f10486p;
            if (hVar != null) {
                this.f10471a.g(hVar);
                this.f10486p = null;
            }
        }
    }

    private static Uri g(Cache cache, String str, Uri uri) {
        Uri uriB = l.b(cache.getContentMetadata(str));
        return uriB != null ? uriB : uri;
    }

    private void h(Throwable th2) {
        if (j() || (th2 instanceof Cache.CacheException)) {
            this.f10487q = true;
        }
    }

    private boolean i() {
        return this.f10482l == this.f10474d;
    }

    private boolean j() {
        return this.f10482l == this.f10472b;
    }

    private boolean k() {
        return !j();
    }

    private boolean l() {
        return this.f10482l == this.f10473c;
    }

    private void o(w1.h hVar, boolean z10) throws InterruptedIOException {
        h hVarC;
        long jMin;
        w1.h hVarA;
        androidx.media3.datasource.a aVar;
        String str = (String) a1.i(hVar.f74105i);
        if (this.f10488r) {
            hVarC = null;
        } else if (this.f10476f) {
            try {
                hVarC = this.f10471a.c(str, this.f10484n, this.f10485o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            hVarC = this.f10471a.b(str, this.f10484n, this.f10485o);
        }
        if (hVarC == null) {
            aVar = this.f10474d;
            hVarA = hVar.a().h(this.f10484n).g(this.f10485o).a();
        } else if (hVarC.f10509d) {
            Uri uriFromFile = Uri.fromFile((File) a1.i(hVarC.f10510e));
            long j10 = hVarC.f10507b;
            long j11 = this.f10484n - j10;
            long jMin2 = hVarC.f10508c - j11;
            long j12 = this.f10485o;
            if (j12 != -1) {
                jMin2 = Math.min(jMin2, j12);
            }
            hVarA = hVar.a().i(uriFromFile).k(j10).h(j11).g(jMin2).a();
            aVar = this.f10472b;
        } else {
            if (hVarC.d()) {
                jMin = this.f10485o;
            } else {
                jMin = hVarC.f10508c;
                long j13 = this.f10485o;
                if (j13 != -1) {
                    jMin = Math.min(jMin, j13);
                }
            }
            hVarA = hVar.a().h(this.f10484n).g(jMin).a();
            aVar = this.f10473c;
            if (aVar == null) {
                aVar = this.f10474d;
                this.f10471a.g(hVarC);
                hVarC = null;
            }
        }
        this.f10490t = (this.f10488r || aVar != this.f10474d) ? Long.MAX_VALUE : this.f10484n + OSSConstants.MIN_PART_SIZE_LIMIT;
        if (z10) {
            androidx.media3.common.util.a.g(i());
            if (aVar == this.f10474d) {
                return;
            }
            try {
                d();
            } catch (Throwable th2) {
                if (!((h) a1.i(hVarC)).b()) {
                    throw th2;
                }
                this.f10471a.g(hVarC);
                throw th2;
            }
        }
        if (hVarC != null && hVarC.b()) {
            this.f10486p = hVarC;
        }
        this.f10482l = aVar;
        this.f10481k = hVarA;
        this.f10483m = 0L;
        long jA = aVar.a(hVarA);
        n nVar = new n();
        if (hVarA.f74104h == -1 && jA != -1) {
            this.f10485o = jA;
            n.g(nVar, this.f10484n + jA);
        }
        if (k()) {
            Uri uri = aVar.getUri();
            this.f10479i = uri;
            n.h(nVar, hVar.f74097a.equals(uri) ? null : this.f10479i);
        }
        if (l()) {
            this.f10471a.h(str, nVar);
        }
    }

    private void p(String str) {
        this.f10485o = 0L;
        if (l()) {
            n nVar = new n();
            n.g(nVar, this.f10484n);
            this.f10471a.h(str, nVar);
        }
    }

    private int q(w1.h hVar) {
        if (this.f10477g && this.f10487q) {
            return 0;
        }
        return (this.f10478h && hVar.f74104h == -1) ? 1 : -1;
    }

    @Override
    public long a(w1.h hVar) {
        try {
            String strA = this.f10475e.a(hVar);
            w1.h hVarA = hVar.a().f(strA).a();
            this.f10480j = hVarA;
            this.f10479i = g(this.f10471a, strA, hVarA.f74097a);
            this.f10484n = hVar.f74103g;
            int iQ = q(hVar);
            boolean z10 = iQ != -1;
            this.f10488r = z10;
            if (z10) {
                n(iQ);
            }
            if (this.f10488r) {
                this.f10485o = -1L;
            } else {
                long jA = l.a(this.f10471a.getContentMetadata(strA));
                this.f10485o = jA;
                if (jA != -1) {
                    long j10 = jA - hVar.f74103g;
                    this.f10485o = j10;
                    if (j10 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = hVar.f74104h;
            if (jMin != -1) {
                long j11 = this.f10485o;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f10485o = jMin;
            }
            long j12 = this.f10485o;
            if (j12 > 0 || j12 == -1) {
                o(hVarA, false);
            }
            long j13 = hVar.f74104h;
            return j13 != -1 ? j13 : this.f10485o;
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }

    @Override
    public void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f10472b.c(nVar);
        this.f10474d.c(nVar);
    }

    @Override
    public void close() {
        this.f10480j = null;
        this.f10479i = null;
        this.f10484n = 0L;
        m();
        try {
            d();
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }

    public Cache e() {
        return this.f10471a;
    }

    public g f() {
        return this.f10475e;
    }

    @Override
    public Map getResponseHeaders() {
        return k() ? this.f10474d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override
    public Uri getUri() {
        return this.f10479i;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:9:0x0021, B:11:0x0029, B:14:0x0030, B:16:0x0044, B:18:0x004a, B:19:0x0050, B:21:0x0061, B:22:0x0065, B:24:0x006b, B:26:0x0071, B:28:0x0077, B:29:0x0083, B:35:0x0091), top: B:39:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    @Override
    public int read(byte[] bArr, int i10, int i11) {
        long j10;
        if (i11 == 0) {
            return 0;
        }
        if (this.f10485o == 0) {
            return -1;
        }
        w1.h hVar = (w1.h) androidx.media3.common.util.a.e(this.f10480j);
        w1.h hVar2 = (w1.h) androidx.media3.common.util.a.e(this.f10481k);
        try {
            if (this.f10484n >= this.f10490t) {
                o(hVar, true);
            }
            int i12 = ((androidx.media3.datasource.a) androidx.media3.common.util.a.e(this.f10482l)).read(bArr, i10, i11);
            if (i12 != -1) {
                if (j()) {
                    this.f10489s += (long) i12;
                }
                long j11 = i12;
                this.f10484n += j11;
                this.f10483m += j11;
                long j12 = this.f10485o;
                if (j12 != -1) {
                    this.f10485o = j12 - j11;
                }
            } else {
                if (!k()) {
                    j10 = this.f10485o;
                    if (j10 <= 0) {
                        if (j10 == -1) {
                        }
                    }
                    d();
                    o(hVar, false);
                    return read(bArr, i10, i11);
                }
                long j13 = hVar2.f74104h;
                if (j13 != -1 && this.f10483m >= j13) {
                    j10 = this.f10485o;
                    if (j10 <= 0) {
                        if (j10 == -1) {
                        }
                    }
                    d();
                    o(hVar, false);
                    return read(bArr, i10, i11);
                }
                p((String) a1.i(hVar.f74105i));
            }
            return i12;
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }

    private a(Cache cache, androidx.media3.datasource.a aVar, androidx.media3.datasource.a aVar2, w1.d dVar, g gVar, int i10, PriorityTaskManager priorityTaskManager, int i11, b bVar) {
        this.f10471a = cache;
        this.f10472b = aVar2;
        this.f10475e = gVar == null ? g.f10505a : gVar;
        this.f10476f = (i10 & 1) != 0;
        this.f10477g = (i10 & 2) != 0;
        this.f10478h = (i10 & 4) != 0;
        if (aVar == null) {
            this.f10474d = androidx.media3.datasource.f.f10602a;
            this.f10473c = null;
        } else {
            aVar = priorityTaskManager != null ? new w1.k(aVar, priorityTaskManager, i11) : aVar;
            this.f10474d = aVar;
            this.f10473c = dVar != null ? new w1.m(aVar, dVar) : null;
        }
    }

    private void m() {
    }

    private void n(int i10) {
    }
}
