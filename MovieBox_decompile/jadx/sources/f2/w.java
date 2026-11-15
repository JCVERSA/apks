package f2;

import android.net.Uri;
import androidx.media3.common.e0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class w extends e0 {

    private static final Object f59950r = new Object();

    private static final androidx.media3.common.t f59951s = new androidx.media3.common.t.c().d("SinglePeriodTimeline").i(Uri.EMPTY).a();

    private final long f59952e;

    private final long f59953f;

    private final long f59954g;

    private final long f59955h;

    private final long f59956i;

    private final long f59957j;

    private final long f59958k;

    private final boolean f59959l;

    private final boolean f59960m;

    private final boolean f59961n;

    private final Object f59962o;

    private final androidx.media3.common.t f59963p;

    private final androidx.media3.common.t.g f59964q;

    public w(long j10, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, tVar);
    }

    @Override
    public int b(Object obj) {
        return f59950r.equals(obj) ? 0 : -1;
    }

    @Override
    public e0.b g(int i10, e0.b bVar, boolean z10) {
        androidx.media3.common.util.a.c(i10, 0, 1);
        return bVar.t(null, z10 ? f59950r : null, 0, this.f59955h, -this.f59957j);
    }

    @Override
    public int i() {
        return 1;
    }

    @Override
    public Object m(int i10) {
        androidx.media3.common.util.a.c(i10, 0, 1);
        return f59950r;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public e0.c o(int i10, e0.c cVar, long j10) {
        long j11;
        androidx.media3.common.util.a.c(i10, 0, 1);
        long j12 = this.f59958k;
        boolean z10 = this.f59960m;
        if (!z10 || this.f59961n || j10 == 0) {
            j11 = j12;
        } else {
            long j13 = this.f59956i;
            if (j13 != C.TIME_UNSET) {
                j12 += j10;
                if (j12 <= j13) {
                    j11 = j12;
                }
            }
            j11 = -9223372036854775807L;
        }
        return cVar.g(e0.c.f9629q, this.f59963p, this.f59962o, this.f59952e, this.f59953f, this.f59954g, this.f59959l, z10, this.f59964q, j11, this.f59956i, 0, 0, this.f59957j);
    }

    @Override
    public int p() {
        return 1;
    }

    public w(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j10, j11, j12, j13, z10, z11, false, obj, tVar, z12 ? tVar.f9901d : null);
    }

    public w(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar, androidx.media3.common.t.g gVar) {
        this.f59952e = j10;
        this.f59953f = j11;
        this.f59954g = j12;
        this.f59955h = j13;
        this.f59956i = j14;
        this.f59957j = j15;
        this.f59958k = j16;
        this.f59959l = z10;
        this.f59960m = z11;
        this.f59961n = z12;
        this.f59962o = obj;
        this.f59963p = (androidx.media3.common.t) androidx.media3.common.util.a.e(tVar);
        this.f59964q = gVar;
    }
}
