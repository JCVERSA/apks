package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import defpackage.blb;
import defpackage.kea;
import defpackage.rp0;
import defpackage.rs1;
import defpackage.u5b;
import defpackage.yg1;
import defpackage.yp0;
import defpackage.zg1;
import defpackage.zi;
import java.io.File;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;

public final class a implements com.google.android.exoplayer2.upstream.a {
    public final Cache a;
    public final com.google.android.exoplayer2.upstream.a b;
    public final com.google.android.exoplayer2.upstream.a c;
    public final com.google.android.exoplayer2.upstream.a d;
    public final rp0 e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public Uri i;
    public com.google.android.exoplayer2.upstream.b j;
    public com.google.android.exoplayer2.upstream.b k;
    public com.google.android.exoplayer2.upstream.a l;
    public long m;
    public long n;
    public long o;
    public yp0 p;
    public boolean q;
    public boolean r;
    public long s;
    public long t;

    public interface b {
    }

    public static final class c implements com.google.android.exoplayer2.upstream.a.InterfaceC0084a {
        public Cache a;
        public rs1.a c;
        public boolean e;
        public com.google.android.exoplayer2.upstream.a.InterfaceC0084a f;
        public int g;
        public int h;
        public com.google.android.exoplayer2.upstream.a.InterfaceC0084a b = new FileDataSource.b();
        public rp0 d = rp0.a;

        @Override
        public a createDataSource() {
            com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a = this.f;
            return b(interfaceC0084a != null ? interfaceC0084a.createDataSource() : null, this.h, this.g);
        }

        public final a b(com.google.android.exoplayer2.upstream.a aVar, int i, int i2) {
            rs1 rs1VarCreateDataSink;
            Cache cache = (Cache) zi.e(this.a);
            if (this.e || aVar == null) {
                rs1VarCreateDataSink = null;
            } else {
                rs1.a aVar2 = this.c;
                rs1VarCreateDataSink = aVar2 != null ? aVar2.createDataSink() : new CacheDataSink.a().a(cache).createDataSink();
            }
            return new a(cache, aVar, this.b.createDataSource(), rs1VarCreateDataSink, this.d, i, null, i2, null);
        }

        public c c(Cache cache) {
            this.a = cache;
            return this;
        }

        public c d(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            this.f = interfaceC0084a;
            return this;
        }
    }

    public static Uri d(Cache cache, String str, Uri uri) {
        Uri uriA = yg1.a(cache.getContentMetadata(str));
        return uriA != null ? uriA : uri;
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.b bVar) {
        try {
            String strA = this.e.a(bVar);
            com.google.android.exoplayer2.upstream.b bVarA = bVar.a().f(strA).a();
            this.j = bVarA;
            this.i = d(this.a, strA, bVarA.a);
            this.n = bVar.g;
            int iN = n(bVar);
            boolean z = iN != -1;
            this.r = z;
            if (z) {
                k(iN);
            }
            if (this.r) {
                this.o = -1L;
            } else {
                long jB = yg1.b(this.a.getContentMetadata(strA));
                this.o = jB;
                if (jB != -1) {
                    long j = jB - bVar.g;
                    this.o = j;
                    if (j < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = bVar.h;
            if (jMin != -1) {
                long j2 = this.o;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.o = jMin;
            }
            long j3 = this.o;
            if (j3 > 0 || j3 == -1) {
                l(bVarA, false);
            }
            long j4 = bVar.h;
            return j4 != -1 ? j4 : this.o;
        } catch (Throwable th) {
            e(th);
            throw th;
        }
    }

    @Override
    public void b(u5b u5bVar) {
        zi.e(u5bVar);
        this.b.b(u5bVar);
        this.d.b(u5bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        com.google.android.exoplayer2.upstream.a aVar = this.l;
        if (aVar == null) {
            return;
        }
        try {
            aVar.close();
        } finally {
            this.k = null;
            this.l = null;
            yp0 yp0Var = this.p;
            if (yp0Var != null) {
                this.a.b(yp0Var);
                this.p = null;
            }
        }
    }

    @Override
    public void close() {
        this.j = null;
        this.i = null;
        this.n = 0L;
        j();
        try {
            c();
        } catch (Throwable th) {
            e(th);
            throw th;
        }
    }

    public final void e(Throwable th) {
        if (g() || (th instanceof Cache.CacheException)) {
            this.q = true;
        }
    }

    public final boolean f() {
        return this.l == this.d;
    }

    public final boolean g() {
        return this.l == this.b;
    }

    @Override
    public Map getResponseHeaders() {
        return h() ? this.d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override
    public Uri getUri() {
        return this.i;
    }

    public final boolean h() {
        return !g();
    }

    public final boolean i() {
        return this.l == this.c;
    }

    public final void j() {
    }

    public final void k(int i) {
    }

    public final void l(com.google.android.exoplayer2.upstream.b bVar, boolean z) throws InterruptedIOException {
        yp0 yp0VarStartReadWrite;
        long jMin;
        com.google.android.exoplayer2.upstream.b bVarA;
        com.google.android.exoplayer2.upstream.a aVar;
        String str = (String) blb.j(bVar.i);
        if (this.r) {
            yp0VarStartReadWrite = null;
        } else if (this.f) {
            try {
                yp0VarStartReadWrite = this.a.startReadWrite(str, this.n, this.o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            yp0VarStartReadWrite = this.a.startReadWriteNonBlocking(str, this.n, this.o);
        }
        if (yp0VarStartReadWrite == null) {
            aVar = this.d;
            bVarA = bVar.a().h(this.n).g(this.o).a();
        } else if (yp0VarStartReadWrite.e) {
            Uri uriFromFile = Uri.fromFile((File) blb.j(yp0VarStartReadWrite.f));
            long j = yp0VarStartReadWrite.c;
            long j2 = this.n - j;
            long jMin2 = yp0VarStartReadWrite.d - j2;
            long j3 = this.o;
            if (j3 != -1) {
                jMin2 = Math.min(jMin2, j3);
            }
            bVarA = bVar.a().i(uriFromFile).k(j).h(j2).g(jMin2).a();
            aVar = this.b;
        } else {
            if (yp0VarStartReadWrite.d()) {
                jMin = this.o;
            } else {
                jMin = yp0VarStartReadWrite.d;
                long j4 = this.o;
                if (j4 != -1) {
                    jMin = Math.min(jMin, j4);
                }
            }
            bVarA = bVar.a().h(this.n).g(jMin).a();
            aVar = this.c;
            if (aVar == null) {
                aVar = this.d;
                this.a.b(yp0VarStartReadWrite);
                yp0VarStartReadWrite = null;
            }
        }
        this.t = (this.r || aVar != this.d) ? Long.MAX_VALUE : this.n + 102400;
        if (z) {
            zi.g(f());
            if (aVar == this.d) {
                return;
            }
            try {
                c();
            } catch (Throwable th) {
                if (!((yp0) blb.j(yp0VarStartReadWrite)).b()) {
                    throw th;
                }
                this.a.b(yp0VarStartReadWrite);
                throw th;
            }
        }
        if (yp0VarStartReadWrite != null && yp0VarStartReadWrite.b()) {
            this.p = yp0VarStartReadWrite;
        }
        this.l = aVar;
        this.k = bVarA;
        this.m = 0L;
        long jA = aVar.a(bVarA);
        zg1 zg1Var = new zg1();
        if (bVarA.h == -1 && jA != -1) {
            this.o = jA;
            zg1.g(zg1Var, this.n + jA);
        }
        if (h()) {
            Uri uri = aVar.getUri();
            this.i = uri;
            zg1.h(zg1Var, bVar.a.equals(uri) ? null : this.i);
        }
        if (i()) {
            this.a.c(str, zg1Var);
        }
    }

    public final void m(String str) {
        this.o = 0L;
        if (i()) {
            zg1 zg1Var = new zg1();
            zg1.g(zg1Var, this.n);
            this.a.c(str, zg1Var);
        }
    }

    public final int n(com.google.android.exoplayer2.upstream.b bVar) {
        if (this.g && this.q) {
            return 0;
        }
        return (this.h && bVar.h == -1) ? 1 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:9:0x0021, B:11:0x0029, B:14:0x0030, B:16:0x0044, B:18:0x004a, B:19:0x0050, B:21:0x0061, B:22:0x0065, B:24:0x006b, B:26:0x0071, B:28:0x0077, B:29:0x0083, B:35:0x0091), top: B:39:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    @Override
    public int read(byte[] bArr, int i, int i2) {
        long j;
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        com.google.android.exoplayer2.upstream.b bVar = (com.google.android.exoplayer2.upstream.b) zi.e(this.j);
        com.google.android.exoplayer2.upstream.b bVar2 = (com.google.android.exoplayer2.upstream.b) zi.e(this.k);
        try {
            if (this.n >= this.t) {
                l(bVar, true);
            }
            int i3 = ((com.google.android.exoplayer2.upstream.a) zi.e(this.l)).read(bArr, i, i2);
            if (i3 != -1) {
                if (g()) {
                    this.s += (long) i3;
                }
                long j2 = i3;
                this.n += j2;
                this.m += j2;
                long j3 = this.o;
                if (j3 != -1) {
                    this.o = j3 - j2;
                }
            } else {
                if (!h()) {
                    j = this.o;
                    if (j <= 0) {
                        if (j == -1) {
                        }
                    }
                    c();
                    l(bVar, false);
                    return read(bArr, i, i2);
                }
                long j4 = bVar2.h;
                if (j4 != -1 && this.m >= j4) {
                    j = this.o;
                    if (j <= 0) {
                        if (j == -1) {
                        }
                    }
                    c();
                    l(bVar, false);
                    return read(bArr, i, i2);
                }
                m((String) blb.j(bVar.i));
            }
            return i3;
        } catch (Throwable th) {
            e(th);
            throw th;
        }
    }

    public a(Cache cache, com.google.android.exoplayer2.upstream.a aVar, com.google.android.exoplayer2.upstream.a aVar2, rs1 rs1Var, rp0 rp0Var, int i, PriorityTaskManager priorityTaskManager, int i2, b bVar) {
        this.a = cache;
        this.b = aVar2;
        this.e = rp0Var == null ? rp0.a : rp0Var;
        this.f = (i & 1) != 0;
        this.g = (i & 2) != 0;
        this.h = (i & 4) != 0;
        if (aVar != null) {
            this.d = aVar;
            this.c = rs1Var != null ? new kea(aVar, rs1Var) : null;
        } else {
            this.d = h.a;
            this.c = null;
        }
    }
}
