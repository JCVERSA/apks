package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class i0 {

    private final int f70514a;

    private boolean f70517d;

    private boolean f70518e;

    private boolean f70519f;

    private final p0 f70515b = new p0(0);

    private long f70520g = C.TIME_UNSET;

    private long f70521h = C.TIME_UNSET;

    private long f70522i = C.TIME_UNSET;

    private final androidx.media3.common.util.j0 f70516c = new androidx.media3.common.util.j0();

    i0(int i10) {
        this.f70514a = i10;
    }

    private int a(k2.s sVar) {
        this.f70516c.T(a1.f10043f);
        this.f70517d = true;
        sVar.resetPeekPosition();
        return 0;
    }

    private int f(k2.s sVar, k2.l0 l0Var, int i10) {
        int iMin = (int) Math.min(this.f70514a, sVar.getLength());
        long j10 = 0;
        if (sVar.getPosition() != j10) {
            l0Var.f63627a = j10;
            return 1;
        }
        this.f70516c.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f70516c.e(), 0, iMin);
        this.f70520g = g(this.f70516c, i10);
        this.f70518e = true;
        return 0;
    }

    private long g(androidx.media3.common.util.j0 j0Var, int i10) {
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG; iF++) {
            if (j0Var.e()[iF] == 71) {
                long jC = m0.c(j0Var, iF, i10);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int h(k2.s sVar, k2.l0 l0Var, int i10) {
        long length = sVar.getLength();
        int iMin = (int) Math.min(this.f70514a, length);
        long j10 = length - ((long) iMin);
        if (sVar.getPosition() != j10) {
            l0Var.f63627a = j10;
            return 1;
        }
        this.f70516c.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f70516c.e(), 0, iMin);
        this.f70521h = i(this.f70516c, i10);
        this.f70519f = true;
        return 0;
    }

    private long i(androidx.media3.common.util.j0 j0Var, int i10) {
        int iF = j0Var.f();
        int iG = j0Var.g();
        for (int i11 = iG - 188; i11 >= iF; i11--) {
            if (m0.b(j0Var.e(), iF, iG, i11)) {
                long jC = m0.c(j0Var, i11, i10);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public long b() {
        return this.f70522i;
    }

    public p0 c() {
        return this.f70515b;
    }

    public boolean d() {
        return this.f70517d;
    }

    public int e(k2.s sVar, k2.l0 l0Var, int i10) {
        if (i10 <= 0) {
            return a(sVar);
        }
        if (!this.f70519f) {
            return h(sVar, l0Var, i10);
        }
        if (this.f70521h == C.TIME_UNSET) {
            return a(sVar);
        }
        if (!this.f70518e) {
            return f(sVar, l0Var, i10);
        }
        long j10 = this.f70520g;
        if (j10 == C.TIME_UNSET) {
            return a(sVar);
        }
        this.f70522i = this.f70515b.c(this.f70521h) - this.f70515b.b(j10);
        return a(sVar);
    }
}
