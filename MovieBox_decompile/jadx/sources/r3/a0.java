package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class a0 {

    private boolean f70399c;

    private boolean f70400d;

    private boolean f70401e;

    private final p0 f70397a = new p0(0);

    private long f70402f = C.TIME_UNSET;

    private long f70403g = C.TIME_UNSET;

    private long f70404h = C.TIME_UNSET;

    private final androidx.media3.common.util.j0 f70398b = new androidx.media3.common.util.j0();

    a0() {
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(k2.s sVar) {
        this.f70398b.T(a1.f10043f);
        this.f70399c = true;
        sVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    private int h(k2.s sVar, k2.l0 l0Var) {
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, sVar.getLength());
        long j10 = 0;
        if (sVar.getPosition() != j10) {
            l0Var.f63627a = j10;
            return 1;
        }
        this.f70398b.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f70398b.e(), 0, iMin);
        this.f70402f = i(this.f70398b);
        this.f70400d = true;
        return 0;
    }

    private long i(androidx.media3.common.util.j0 j0Var) {
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG - 3; iF++) {
            if (f(j0Var.e(), iF) == 442) {
                j0Var.W(iF + 4);
                long jL = l(j0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int j(k2.s sVar, k2.l0 l0Var) {
        long length = sVar.getLength();
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, length);
        long j10 = length - ((long) iMin);
        if (sVar.getPosition() != j10) {
            l0Var.f63627a = j10;
            return 1;
        }
        this.f70398b.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f70398b.e(), 0, iMin);
        this.f70403g = k(this.f70398b);
        this.f70401e = true;
        return 0;
    }

    private long k(androidx.media3.common.util.j0 j0Var) {
        int iF = j0Var.f();
        for (int iG = j0Var.g() - 4; iG >= iF; iG--) {
            if (f(j0Var.e(), iG) == 442) {
                j0Var.W(iG + 4);
                long jL = l(j0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public static long l(androidx.media3.common.util.j0 j0Var) {
        int iF = j0Var.f();
        if (j0Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        j0Var.l(bArr, 0, 9);
        j0Var.W(iF);
        return !a(bArr) ? C.TIME_UNSET : m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b10 = bArr[0];
        long j10 = (((((long) b10) & 56) >> 3) << 30) | ((((long) b10) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b11 = bArr[2];
        return j10 | (((((long) b11) & 248) >> 3) << 15) | ((((long) b11) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.f70404h;
    }

    public p0 d() {
        return this.f70397a;
    }

    public boolean e() {
        return this.f70399c;
    }

    public int g(k2.s sVar, k2.l0 l0Var) {
        if (!this.f70401e) {
            return j(sVar, l0Var);
        }
        if (this.f70403g == C.TIME_UNSET) {
            return b(sVar);
        }
        if (!this.f70400d) {
            return h(sVar, l0Var);
        }
        long j10 = this.f70402f;
        if (j10 == C.TIME_UNSET) {
            return b(sVar);
        }
        this.f70404h = this.f70397a.c(this.f70403g) - this.f70397a.b(j10);
        return b(sVar);
    }
}
