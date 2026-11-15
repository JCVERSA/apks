package androidx.media3.datasource.cache;

import java.io.InterruptedIOException;

public final class i {

    private final androidx.media3.datasource.cache.a f10512a;

    private final Cache f10513b;

    private final w1.h f10514c;

    private final String f10515d;

    private final byte[] f10516e;

    private final a f10517f;

    private long f10518g;

    private long f10519h;

    private long f10520i;

    private volatile boolean f10521j;

    public interface a {
        void a(long j10, long j11, long j12);
    }

    public i(androidx.media3.datasource.cache.a aVar, w1.h hVar, byte[] bArr, a aVar2) {
        this.f10512a = aVar;
        this.f10513b = aVar.e();
        this.f10514c = hVar;
        this.f10516e = bArr == null ? new byte[131072] : bArr;
        this.f10517f = aVar2;
        this.f10515d = aVar.f().a(hVar);
        this.f10518g = hVar.f74103g;
    }

    private long c() {
        long j10 = this.f10519h;
        if (j10 == -1) {
            return -1L;
        }
        return j10 - this.f10514c.f74103g;
    }

    private void d(long j10) {
        this.f10520i += j10;
        a aVar = this.f10517f;
        if (aVar != null) {
            aVar.a(c(), this.f10520i, j10);
        }
    }

    private void e(long j10) {
        if (this.f10519h == j10) {
            return;
        }
        this.f10519h = j10;
        a aVar = this.f10517f;
        if (aVar != null) {
            aVar.a(c(), this.f10520i, 0L);
        }
    }

    private long f(long j10, long j11) throws Exception {
        long jA;
        boolean z10 = true;
        boolean z11 = j10 + j11 == this.f10519h || j11 == -1;
        if (j11 != -1) {
            try {
                jA = this.f10512a.a(this.f10514c.a().h(j10).g(j11).a());
            } catch (Exception unused) {
                w1.g.a(this.f10512a);
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
                jA = this.f10512a.a(this.f10514c.a().h(j10).g(-1L).a());
            } catch (Exception e10) {
                w1.g.a(this.f10512a);
                throw e10;
            }
        }
        if (z11 && jA != -1) {
            try {
                e(jA + j10);
            } catch (Exception e11) {
                w1.g.a(this.f10512a);
                throw e11;
            }
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 != -1) {
            g();
            androidx.media3.datasource.cache.a aVar = this.f10512a;
            byte[] bArr = this.f10516e;
            i10 = aVar.read(bArr, 0, bArr.length);
            if (i10 != -1) {
                d(i10);
                i11 += i10;
            }
        }
        if (z11) {
            e(j10 + ((long) i11));
        }
        this.f10512a.close();
        return i11;
    }

    private void g() throws InterruptedIOException {
        if (this.f10521j) {
            throw new InterruptedIOException();
        }
    }

    public void a() throws InterruptedIOException {
        g();
        Cache cache = this.f10513b;
        String str = this.f10515d;
        w1.h hVar = this.f10514c;
        this.f10520i = cache.a(str, hVar.f74103g, hVar.f74104h);
        w1.h hVar2 = this.f10514c;
        long j10 = hVar2.f74104h;
        if (j10 != -1) {
            this.f10519h = hVar2.f74103g + j10;
        } else {
            long jA = l.a(this.f10513b.getContentMetadata(this.f10515d));
            if (jA == -1) {
                jA = -1;
            }
            this.f10519h = jA;
        }
        a aVar = this.f10517f;
        if (aVar != null) {
            aVar.a(c(), this.f10520i, 0L);
        }
        while (true) {
            long j11 = this.f10519h;
            if (j11 != -1 && this.f10518g >= j11) {
                return;
            }
            g();
            long j12 = this.f10519h;
            long cachedLength = this.f10513b.getCachedLength(this.f10515d, this.f10518g, j12 == -1 ? Long.MAX_VALUE : j12 - this.f10518g);
            if (cachedLength > 0) {
                this.f10518g += cachedLength;
            } else {
                long j13 = -cachedLength;
                if (j13 == Long.MAX_VALUE) {
                    j13 = -1;
                }
                long j14 = this.f10518g;
                this.f10518g = j14 + f(j14, j13);
            }
        }
    }

    public void b() {
        this.f10521j = true;
    }
}
