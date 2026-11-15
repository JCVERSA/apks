package s9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class y {

    private boolean f71970c;

    private boolean f71971d;

    private boolean f71972e;

    private final l0 f71968a = new l0(0);

    private long f71973f = C.TIME_UNSET;

    private long f71974g = C.TIME_UNSET;

    private long f71975h = C.TIME_UNSET;

    private final com.google.android.exoplayer2.util.d0 f71969b = new com.google.android.exoplayer2.util.d0();

    y() {
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(i9.m mVar) {
        this.f71969b.M(p0.f26859f);
        this.f71970c = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    private int h(i9.m mVar, i9.a0 a0Var) {
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, mVar.getLength());
        long j10 = 0;
        if (mVar.getPosition() != j10) {
            a0Var.f61884a = j10;
            return 1;
        }
        this.f71969b.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f71969b.d(), 0, iMin);
        this.f71973f = i(this.f71969b);
        this.f71971d = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.d0 d0Var) {
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF - 3; iE++) {
            if (f(d0Var.d(), iE) == 442) {
                d0Var.P(iE + 4);
                long jL = l(d0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int j(i9.m mVar, i9.a0 a0Var) {
        long length = mVar.getLength();
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, length);
        long j10 = length - ((long) iMin);
        if (mVar.getPosition() != j10) {
            a0Var.f61884a = j10;
            return 1;
        }
        this.f71969b.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.f71969b.d(), 0, iMin);
        this.f71974g = k(this.f71969b);
        this.f71972e = true;
        return 0;
    }

    private long k(com.google.android.exoplayer2.util.d0 d0Var) {
        int iE = d0Var.e();
        for (int iF = d0Var.f() - 4; iF >= iE; iF--) {
            if (f(d0Var.d(), iF) == 442) {
                d0Var.P(iF + 4);
                long jL = l(d0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public static long l(com.google.android.exoplayer2.util.d0 d0Var) {
        int iE = d0Var.e();
        if (d0Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        d0Var.j(bArr, 0, 9);
        d0Var.P(iE);
        return !a(bArr) ? C.TIME_UNSET : m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b10 = bArr[0];
        long j10 = (((((long) b10) & 56) >> 3) << 30) | ((((long) b10) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b11 = bArr[2];
        return j10 | (((((long) b11) & 248) >> 3) << 15) | ((((long) b11) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.f71975h;
    }

    public l0 d() {
        return this.f71968a;
    }

    public boolean e() {
        return this.f71970c;
    }

    public int g(i9.m mVar, i9.a0 a0Var) {
        if (!this.f71972e) {
            return j(mVar, a0Var);
        }
        if (this.f71974g == C.TIME_UNSET) {
            return b(mVar);
        }
        if (!this.f71971d) {
            return h(mVar, a0Var);
        }
        long j10 = this.f71973f;
        if (j10 == C.TIME_UNSET) {
            return b(mVar);
        }
        long jB = this.f71968a.b(this.f71974g) - this.f71968a.b(j10);
        this.f71975h = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.s.i("PsDurationReader", "Invalid duration: " + this.f71975h + ". Using TIME_UNSET instead.");
            this.f71975h = C.TIME_UNSET;
        }
        return b(mVar);
    }
}
