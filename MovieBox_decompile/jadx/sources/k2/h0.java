package k2;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class h0 implements m0 {

    private final androidx.media3.common.util.v f63596a;

    private final androidx.media3.common.util.v f63597b;

    private long f63598c;

    public h0(long[] jArr, long[] jArr2, long j10) {
        androidx.media3.common.util.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f63596a = new androidx.media3.common.util.v(length);
            this.f63597b = new androidx.media3.common.util.v(length);
        } else {
            int i10 = length + 1;
            androidx.media3.common.util.v vVar = new androidx.media3.common.util.v(i10);
            this.f63596a = vVar;
            androidx.media3.common.util.v vVar2 = new androidx.media3.common.util.v(i10);
            this.f63597b = vVar2;
            vVar.a(0L);
            vVar2.a(0L);
        }
        this.f63596a.b(jArr);
        this.f63597b.b(jArr2);
        this.f63598c = j10;
    }

    public void b(long j10, long j11) {
        if (this.f63597b.d() == 0 && j10 > 0) {
            this.f63596a.a(0L);
            this.f63597b.a(0L);
        }
        this.f63596a.a(j11);
        this.f63597b.a(j10);
    }

    public boolean c(long j10, long j11) {
        if (this.f63597b.d() == 0) {
            return false;
        }
        androidx.media3.common.util.v vVar = this.f63597b;
        return j10 - vVar.c(vVar.d() - 1) < j11;
    }

    public void d(long j10) {
        this.f63598c = j10;
    }

    @Override
    public long getDurationUs() {
        return this.f63598c;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        if (this.f63597b.d() == 0) {
            return new m0.a(n0.f63656c);
        }
        int iE = a1.e(this.f63597b, j10, true, true);
        n0 n0Var = new n0(this.f63597b.c(iE), this.f63596a.c(iE));
        if (n0Var.f63657a == j10 || iE == this.f63597b.d() - 1) {
            return new m0.a(n0Var);
        }
        int i10 = iE + 1;
        return new m0.a(n0Var, new n0(this.f63597b.c(i10), this.f63596a.c(i10)));
    }

    public long getTimeUs(long j10) {
        if (this.f63597b.d() == 0) {
            return C.TIME_UNSET;
        }
        return this.f63597b.c(a1.e(this.f63596a, j10, true, true));
    }

    @Override
    public boolean isSeekable() {
        return this.f63597b.d() > 0;
    }
}
