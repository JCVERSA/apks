package s9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class f0 {

    private final int f71679a;

    private boolean f71682d;

    private boolean f71683e;

    private boolean f71684f;

    private final l0 f71680b = new l0(0);

    private long f71685g = C.TIME_UNSET;

    private long f71686h = C.TIME_UNSET;

    private long f71687i = C.TIME_UNSET;

    private final com.google.android.exoplayer2.util.d0 f71681c = new com.google.android.exoplayer2.util.d0();

    f0(int i10) {
        this.f71679a = i10;
    }

    private int a(i9.m mVar) {
        this.f71681c.M(p0.f26859f);
        this.f71682d = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(i9.m mVar, i9.a0 a0Var, int i10) {
        int iMin = (int) Math.min(this.f71679a, mVar.getLength());
        long j10 = 0;
        if (mVar.getPosition() != j10) {
            a0Var.f61884a = j10;
            return 1;
        }
        this.f71681c.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f71681c.d(), 0, iMin);
        this.f71685g = g(this.f71681c, i10);
        this.f71683e = true;
        return 0;
    }

    private long g(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF; iE++) {
            if (d0Var.d()[iE] == 71) {
                long jC = j0.c(d0Var, iE, i10);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int h(i9.m mVar, i9.a0 a0Var, int i10) {
        long length = mVar.getLength();
        int iMin = (int) Math.min(this.f71679a, length);
        long j10 = length - ((long) iMin);
        if (mVar.getPosition() != j10) {
            a0Var.f61884a = j10;
            return 1;
        }
        this.f71681c.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f71681c.d(), 0, iMin);
        this.f71686h = i(this.f71681c, i10);
        this.f71684f = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        int iE = d0Var.e();
        int iF = d0Var.f();
        for (int i11 = iF - 188; i11 >= iE; i11--) {
            if (j0.b(d0Var.d(), iE, iF, i11)) {
                long jC = j0.c(d0Var, i11, i10);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public long b() {
        return this.f71687i;
    }

    public l0 c() {
        return this.f71680b;
    }

    public boolean d() {
        return this.f71682d;
    }

    public int e(i9.m mVar, i9.a0 a0Var, int i10) {
        if (i10 <= 0) {
            return a(mVar);
        }
        if (!this.f71684f) {
            return h(mVar, a0Var, i10);
        }
        if (this.f71686h == C.TIME_UNSET) {
            return a(mVar);
        }
        if (!this.f71683e) {
            return f(mVar, a0Var, i10);
        }
        long j10 = this.f71685g;
        if (j10 == C.TIME_UNSET) {
            return a(mVar);
        }
        long jB = this.f71680b.b(this.f71686h) - this.f71680b.b(j10);
        this.f71687i = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.s.i("TsDurationReader", "Invalid duration: " + this.f71687i + ". Using TIME_UNSET instead.");
            this.f71687i = C.TIME_UNSET;
        }
        return a(mVar);
    }
}
