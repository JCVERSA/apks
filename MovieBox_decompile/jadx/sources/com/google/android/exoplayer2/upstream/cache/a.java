package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.d0;
import com.google.android.exoplayer2.upstream.e0;
import com.google.android.exoplayer2.upstream.j0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.p0;
import java.io.File;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;

public final class a implements com.google.android.exoplayer2.upstream.k {

    private final Cache f26530a;

    private final com.google.android.exoplayer2.upstream.k f26531b;

    private final com.google.android.exoplayer2.upstream.k f26532c;

    private final com.google.android.exoplayer2.upstream.k f26533d;

    private final g f26534e;

    private final boolean f26535f;

    private final boolean f26536g;

    private final boolean f26537h;

    private Uri f26538i;

    private com.google.android.exoplayer2.upstream.n f26539j;

    private com.google.android.exoplayer2.upstream.n f26540k;

    private com.google.android.exoplayer2.upstream.k f26541l;

    private long f26542m;

    private long f26543n;

    private long f26544o;

    private h f26545p;

    private boolean f26546q;

    private boolean f26547r;

    private long f26548s;

    private long f26549t;

    public interface b {
    }

    public static final class c implements com.google.android.exoplayer2.upstream.k.a {

        private Cache f26550a;

        private com.google.android.exoplayer2.upstream.i.a f26552c;

        private boolean f26554e;

        private com.google.android.exoplayer2.upstream.k.a f26555f;

        private PriorityTaskManager f26556g;

        private int f26557h;

        private int f26558i;

        private com.google.android.exoplayer2.upstream.k.a f26551b = new FileDataSource.b();

        private g f26553d = g.f26564a;

        private a d(com.google.android.exoplayer2.upstream.k kVar, int i10, int i11) {
            com.google.android.exoplayer2.upstream.i iVarCreateDataSink;
            Cache cache = (Cache) com.google.android.exoplayer2.util.a.e(this.f26550a);
            if (this.f26554e || kVar == null) {
                iVarCreateDataSink = null;
            } else {
                com.google.android.exoplayer2.upstream.i.a aVar = this.f26552c;
                iVarCreateDataSink = aVar != null ? aVar.createDataSink() : new CacheDataSink.a().a(cache).createDataSink();
            }
            return new a(cache, kVar, this.f26551b.createDataSource(), iVarCreateDataSink, this.f26553d, i10, this.f26556g, i11, null);
        }

        @Override
        public a createDataSource() {
            com.google.android.exoplayer2.upstream.k.a aVar = this.f26555f;
            return d(aVar != null ? aVar.createDataSource() : null, this.f26558i, this.f26557h);
        }

        public a b() {
            com.google.android.exoplayer2.upstream.k.a aVar = this.f26555f;
            return d(aVar != null ? aVar.createDataSource() : null, this.f26558i | 1, -1000);
        }

        public a c() {
            return d(null, this.f26558i | 1, -1000);
        }

        public Cache e() {
            return this.f26550a;
        }

        public g f() {
            return this.f26553d;
        }

        public PriorityTaskManager g() {
            return this.f26556g;
        }

        public c h(Cache cache) {
            this.f26550a = cache;
            return this;
        }

        public c i(com.google.android.exoplayer2.upstream.k.a aVar) {
            this.f26555f = aVar;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        com.google.android.exoplayer2.upstream.k kVar = this.f26541l;
        if (kVar == null) {
            return;
        }
        try {
            kVar.close();
        } finally {
            this.f26540k = null;
            this.f26541l = null;
            h hVar = this.f26545p;
            if (hVar != null) {
                this.f26530a.g(hVar);
                this.f26545p = null;
            }
        }
    }

    private static Uri j(Cache cache, String str, Uri uri) {
        Uri uriB = l.b(cache.getContentMetadata(str));
        return uriB != null ? uriB : uri;
    }

    private void k(Throwable th2) {
        if (m() || (th2 instanceof Cache.CacheException)) {
            this.f26546q = true;
        }
    }

    private boolean l() {
        return this.f26541l == this.f26533d;
    }

    private boolean m() {
        return this.f26541l == this.f26531b;
    }

    private boolean n() {
        return !m();
    }

    private boolean o() {
        return this.f26541l == this.f26532c;
    }

    private void r(com.google.android.exoplayer2.upstream.n nVar, boolean z10) throws InterruptedIOException {
        h hVarC;
        long jMin;
        com.google.android.exoplayer2.upstream.n nVarA;
        com.google.android.exoplayer2.upstream.k kVar;
        String str = (String) p0.j(nVar.f26673i);
        if (this.f26547r) {
            hVarC = null;
        } else if (this.f26535f) {
            try {
                hVarC = this.f26530a.c(str, this.f26543n, this.f26544o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            hVarC = this.f26530a.b(str, this.f26543n, this.f26544o);
        }
        if (hVarC == null) {
            kVar = this.f26533d;
            nVarA = nVar.a().h(this.f26543n).g(this.f26544o).a();
        } else if (hVarC.f26568d) {
            Uri uriFromFile = Uri.fromFile((File) p0.j(hVarC.f26569e));
            long j10 = hVarC.f26566b;
            long j11 = this.f26543n - j10;
            long jMin2 = hVarC.f26567c - j11;
            long j12 = this.f26544o;
            if (j12 != -1) {
                jMin2 = Math.min(jMin2, j12);
            }
            nVarA = nVar.a().i(uriFromFile).k(j10).h(j11).g(jMin2).a();
            kVar = this.f26531b;
        } else {
            if (hVarC.d()) {
                jMin = this.f26544o;
            } else {
                jMin = hVarC.f26567c;
                long j13 = this.f26544o;
                if (j13 != -1) {
                    jMin = Math.min(jMin, j13);
                }
            }
            nVarA = nVar.a().h(this.f26543n).g(jMin).a();
            kVar = this.f26532c;
            if (kVar == null) {
                kVar = this.f26533d;
                this.f26530a.g(hVarC);
                hVarC = null;
            }
        }
        this.f26549t = (this.f26547r || kVar != this.f26533d) ? Long.MAX_VALUE : this.f26543n + OSSConstants.MIN_PART_SIZE_LIMIT;
        if (z10) {
            com.google.android.exoplayer2.util.a.g(l());
            if (kVar == this.f26533d) {
                return;
            }
            try {
                f();
            } catch (Throwable th2) {
                if (!((h) p0.j(hVarC)).b()) {
                    throw th2;
                }
                this.f26530a.g(hVarC);
                throw th2;
            }
        }
        if (hVarC != null && hVarC.b()) {
            this.f26545p = hVarC;
        }
        this.f26541l = kVar;
        this.f26540k = nVarA;
        this.f26542m = 0L;
        long jA = kVar.a(nVarA);
        n nVar2 = new n();
        if (nVarA.f26672h == -1 && jA != -1) {
            this.f26544o = jA;
            n.g(nVar2, this.f26543n + jA);
        }
        if (n()) {
            Uri uri = kVar.getUri();
            this.f26538i = uri;
            n.h(nVar2, nVar.f26665a.equals(uri) ? null : this.f26538i);
        }
        if (o()) {
            this.f26530a.f(str, nVar2);
        }
    }

    private void s(String str) {
        this.f26544o = 0L;
        if (o()) {
            n nVar = new n();
            n.g(nVar, this.f26543n);
            this.f26530a.f(str, nVar);
        }
    }

    private int t(com.google.android.exoplayer2.upstream.n nVar) {
        if (this.f26536g && this.f26546q) {
            return 0;
        }
        return (this.f26537h && nVar.f26672h == -1) ? 1 : -1;
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        try {
            String strA = this.f26534e.a(nVar);
            com.google.android.exoplayer2.upstream.n nVarA = nVar.a().f(strA).a();
            this.f26539j = nVarA;
            this.f26538i = j(this.f26530a, strA, nVarA.f26665a);
            this.f26543n = nVar.f26671g;
            int iT = t(nVar);
            boolean z10 = iT != -1;
            this.f26547r = z10;
            if (z10) {
                q(iT);
            }
            if (this.f26547r) {
                this.f26544o = -1L;
            } else {
                long jA = l.a(this.f26530a.getContentMetadata(strA));
                this.f26544o = jA;
                if (jA != -1) {
                    long j10 = jA - nVar.f26671g;
                    this.f26544o = j10;
                    if (j10 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = nVar.f26672h;
            if (jMin != -1) {
                long j11 = this.f26544o;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f26544o = jMin;
            }
            long j12 = this.f26544o;
            if (j12 > 0 || j12 == -1) {
                r(nVarA, false);
            }
            long j13 = nVar.f26672h;
            return j13 != -1 ? j13 : this.f26544o;
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }

    @Override
    public void close() {
        this.f26539j = null;
        this.f26538i = null;
        this.f26543n = 0L;
        p();
        try {
            f();
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26531b.e(k0Var);
        this.f26533d.e(k0Var);
    }

    @Override
    public Map getResponseHeaders() {
        return n() ? this.f26533d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override
    public Uri getUri() {
        return this.f26538i;
    }

    public Cache h() {
        return this.f26530a;
    }

    public g i() {
        return this.f26534e;
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
        if (this.f26544o == 0) {
            return -1;
        }
        com.google.android.exoplayer2.upstream.n nVar = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(this.f26539j);
        com.google.android.exoplayer2.upstream.n nVar2 = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(this.f26540k);
        try {
            if (this.f26543n >= this.f26549t) {
                r(nVar, true);
            }
            int i12 = ((com.google.android.exoplayer2.upstream.k) com.google.android.exoplayer2.util.a.e(this.f26541l)).read(bArr, i10, i11);
            if (i12 != -1) {
                if (m()) {
                    this.f26548s += (long) i12;
                }
                long j11 = i12;
                this.f26543n += j11;
                this.f26542m += j11;
                long j12 = this.f26544o;
                if (j12 != -1) {
                    this.f26544o = j12 - j11;
                }
            } else {
                if (!n()) {
                    j10 = this.f26544o;
                    if (j10 <= 0) {
                        if (j10 == -1) {
                        }
                    }
                    f();
                    r(nVar, false);
                    return read(bArr, i10, i11);
                }
                long j13 = nVar2.f26672h;
                if (j13 != -1 && this.f26542m >= j13) {
                    j10 = this.f26544o;
                    if (j10 <= 0) {
                        if (j10 == -1) {
                        }
                    }
                    f();
                    r(nVar, false);
                    return read(bArr, i10, i11);
                }
                s((String) p0.j(nVar.f26673i));
            }
            return i12;
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }

    private a(Cache cache, com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.k kVar2, com.google.android.exoplayer2.upstream.i iVar, g gVar, int i10, PriorityTaskManager priorityTaskManager, int i11, b bVar) {
        this.f26530a = cache;
        this.f26531b = kVar2;
        this.f26534e = gVar == null ? g.f26564a : gVar;
        this.f26535f = (i10 & 1) != 0;
        this.f26536g = (i10 & 2) != 0;
        this.f26537h = (i10 & 4) != 0;
        if (kVar == null) {
            this.f26533d = d0.f26622a;
            this.f26532c = null;
        } else {
            kVar = priorityTaskManager != null ? new e0(kVar, priorityTaskManager, i11) : kVar;
            this.f26533d = kVar;
            this.f26532c = iVar != null ? new j0(kVar, iVar) : null;
        }
    }

    private void p() {
    }

    private void q(int i10) {
    }
}
