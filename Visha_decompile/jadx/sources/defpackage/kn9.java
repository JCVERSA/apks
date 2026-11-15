package defpackage;

import android.net.Uri;
import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.n;

public final class kn9 extends a0 {
    public static final Object q = new Object();
    public static final n r = new n.c().d("SinglePeriodTimeline").i(Uri.EMPTY).a();
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final Object n;
    public final n o;
    public final n.g p;

    public kn9(long j, boolean z, boolean z2, boolean z3, Object obj, n nVar) {
        this(j, j, 0L, 0L, z, z2, z3, obj, nVar);
    }

    @Override
    public int f(Object obj) {
        return q.equals(obj) ? 0 : -1;
    }

    @Override
    public a0.b k(int i, a0.b bVar, boolean z) {
        zi.c(i, 0, 1);
        return bVar.v(null, z ? q : null, 0, this.g, -this.i);
    }

    @Override
    public int m() {
        return 1;
    }

    @Override
    public Object q(int i) {
        zi.c(i, 0, 1);
        return q;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v4 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public a0.d s(int i, a0.d dVar, long j) {
        long j2;
        zi.c(i, 0, 1);
        long j3 = this.j;
        boolean z = this.l;
        if (!z || this.m || j == 0) {
            j2 = j3;
        } else {
            long j4 = this.h;
            if (j4 != C.TIME_UNSET) {
                j3 += j;
                if (j3 <= j4) {
                    j2 = j3;
                }
            }
            j2 = -9223372036854775807L;
        }
        return dVar.k(a0.d.s, this.o, this.n, this.d, this.e, this.f, this.k, z, this.p, j2, this.h, 0, 0, this.i);
    }

    @Override
    public int t() {
        return 1;
    }

    public kn9(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, n nVar) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3, j4, z, z2, false, obj, nVar, z3 ? nVar.e : null);
    }

    public kn9(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, n nVar, n.g gVar) {
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = j5;
        this.i = j6;
        this.j = j7;
        this.k = z;
        this.l = z2;
        this.m = z3;
        this.n = obj;
        this.o = (n) zi.e(nVar);
        this.p = gVar;
    }
}
