package v9;

import android.net.Uri;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class u extends l3 {

    private static final Object f73538p = new Object();

    private static final w1 f73539q = new w1.c().d("SinglePeriodTimeline").i(Uri.EMPTY).a();

    private final long f73540c;

    private final long f73541d;

    private final long f73542e;

    private final long f73543f;

    private final long f73544g;

    private final long f73545h;

    private final long f73546i;

    private final boolean f73547j;

    private final boolean f73548k;

    private final boolean f73549l;

    private final Object f73550m;

    private final w1 f73551n;

    private final w1.g f73552o;

    public u(long j10, boolean z10, boolean z11, boolean z12, Object obj, w1 w1Var) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, w1Var);
    }

    @Override
    public int f(Object obj) {
        return f73538p.equals(obj) ? 0 : -1;
    }

    @Override
    public l3.b k(int i10, l3.b bVar, boolean z10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        return bVar.v(null, z10 ? f73538p : null, 0, this.f73543f, -this.f73545h);
    }

    @Override
    public int m() {
        return 1;
    }

    @Override
    public Object q(int i10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        return f73538p;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public l3.d s(int i10, l3.d dVar, long j10) {
        long j11;
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        long j12 = this.f73546i;
        boolean z10 = this.f73548k;
        if (!z10 || this.f73549l || j10 == 0) {
            j11 = j12;
        } else {
            long j13 = this.f73544g;
            if (j13 != C.TIME_UNSET) {
                j12 += j10;
                if (j12 <= j13) {
                    j11 = j12;
                }
            }
            j11 = -9223372036854775807L;
        }
        return dVar.k(l3.d.f24534r, this.f73551n, this.f73550m, this.f73540c, this.f73541d, this.f73542e, this.f73547j, z10, this.f73552o, j11, this.f73544g, 0, 0, this.f73545h);
    }

    @Override
    public int t() {
        return 1;
    }

    public u(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, Object obj, w1 w1Var) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j10, j11, j12, j13, z10, z11, false, obj, w1Var, z12 ? w1Var.f27151d : null);
    }

    public u(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, Object obj, w1 w1Var, w1.g gVar) {
        this.f73540c = j10;
        this.f73541d = j11;
        this.f73542e = j12;
        this.f73543f = j13;
        this.f73544g = j14;
        this.f73545h = j15;
        this.f73546i = j16;
        this.f73547j = z10;
        this.f73548k = z11;
        this.f73549l = z12;
        this.f73550m = obj;
        this.f73551n = (w1) com.google.android.exoplayer2.util.a.e(w1Var);
        this.f73552o = gVar;
    }
}
