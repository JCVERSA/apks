package com.google.android.exoplayer2.upstream.cache;

import java.io.IOException;
import java.io.InterruptedIOException;

public final class i {

    private final com.google.android.exoplayer2.upstream.cache.a f26571a;

    private final Cache f26572b;

    private final com.google.android.exoplayer2.upstream.n f26573c;

    private final String f26574d;

    private final byte[] f26575e;

    private final a f26576f;

    private long f26577g;

    private long f26578h;

    private long f26579i;

    private volatile boolean f26580j;

    public interface a {
        void a(long j10, long j11, long j12);
    }

    public i(com.google.android.exoplayer2.upstream.cache.a aVar, com.google.android.exoplayer2.upstream.n nVar, byte[] bArr, a aVar2) {
        this.f26571a = aVar;
        this.f26572b = aVar.h();
        this.f26573c = nVar;
        this.f26575e = bArr == null ? new byte[131072] : bArr;
        this.f26576f = aVar2;
        this.f26574d = aVar.i().a(nVar);
        this.f26577g = nVar.f26671g;
    }

    private long c() {
        long j10 = this.f26578h;
        if (j10 == -1) {
            return -1L;
        }
        return j10 - this.f26573c.f26671g;
    }

    private void d(long j10) {
        this.f26579i += j10;
        a aVar = this.f26576f;
        if (aVar != null) {
            aVar.a(c(), this.f26579i, j10);
        }
    }

    private void e(long j10) {
        if (this.f26578h == j10) {
            return;
        }
        this.f26578h = j10;
        a aVar = this.f26576f;
        if (aVar != null) {
            aVar.a(c(), this.f26579i, 0L);
        }
    }

    private long f(long j10, long j11) throws IOException {
        long jA;
        boolean z10 = true;
        boolean z11 = j10 + j11 == this.f26578h || j11 == -1;
        if (j11 != -1) {
            try {
                jA = this.f26571a.a(this.f26573c.a().h(j10).g(j11).a());
            } catch (IOException unused) {
                com.google.android.exoplayer2.upstream.m.a(this.f26571a);
                z10 = false;
                jA = -1;
            }
        } else {
            z10 = false;
            jA = -1;
        }
        if (!z10) {
            g();
            try {
                jA = this.f26571a.a(this.f26573c.a().h(j10).g(-1L).a());
            } catch (IOException e10) {
                com.google.android.exoplayer2.upstream.m.a(this.f26571a);
                throw e10;
            }
        }
        if (z11 && jA != -1) {
            try {
                e(jA + j10);
            } catch (IOException e11) {
                com.google.android.exoplayer2.upstream.m.a(this.f26571a);
                throw e11;
            }
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 != -1) {
            g();
            com.google.android.exoplayer2.upstream.cache.a aVar = this.f26571a;
            byte[] bArr = this.f26575e;
            i10 = aVar.read(bArr, 0, bArr.length);
            if (i10 != -1) {
                d(i10);
                i11 += i10;
            }
        }
        if (z11) {
            e(j10 + ((long) i11));
        }
        this.f26571a.close();
        return i11;
    }

    private void g() throws InterruptedIOException {
        if (this.f26580j) {
            throw new InterruptedIOException();
        }
    }

    public void a() throws InterruptedIOException {
        g();
        Cache cache = this.f26572b;
        String str = this.f26574d;
        com.google.android.exoplayer2.upstream.n nVar = this.f26573c;
        this.f26579i = cache.a(str, nVar.f26671g, nVar.f26672h);
        com.google.android.exoplayer2.upstream.n nVar2 = this.f26573c;
        long j10 = nVar2.f26672h;
        if (j10 != -1) {
            this.f26578h = nVar2.f26671g + j10;
        } else {
            long jA = l.a(this.f26572b.getContentMetadata(this.f26574d));
            if (jA == -1) {
                jA = -1;
            }
            this.f26578h = jA;
        }
        a aVar = this.f26576f;
        if (aVar != null) {
            aVar.a(c(), this.f26579i, 0L);
        }
        while (true) {
            long j11 = this.f26578h;
            if (j11 != -1 && this.f26577g >= j11) {
                return;
            }
            g();
            long j12 = this.f26578h;
            long cachedLength = this.f26572b.getCachedLength(this.f26574d, this.f26577g, j12 == -1 ? Long.MAX_VALUE : j12 - this.f26577g);
            if (cachedLength > 0) {
                this.f26577g += cachedLength;
            } else {
                long j13 = -cachedLength;
                if (j13 == Long.MAX_VALUE) {
                    j13 = -1;
                }
                long j14 = this.f26577g;
                this.f26577g = j14 + f(j14, j13);
            }
        }
    }

    public void b() {
        this.f26580j = true;
    }
}
