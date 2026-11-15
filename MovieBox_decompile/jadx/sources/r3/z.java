package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class z extends k2.e {

    private static final class b implements k2.e.f {

        private final p0 f70816a;

        private final androidx.media3.common.util.j0 f70817b;

        private k2.e.C0783e c(androidx.media3.common.util.j0 j0Var, long j10, long j11) {
            int iF = -1;
            int iF2 = -1;
            long j12 = -9223372036854775807L;
            while (j0Var.a() >= 4) {
                if (z.k(j0Var.e(), j0Var.f()) != 442) {
                    j0Var.X(1);
                } else {
                    j0Var.X(4);
                    long jL = a0.l(j0Var);
                    if (jL != C.TIME_UNSET) {
                        long jB = this.f70816a.b(jL);
                        if (jB > j10) {
                            return j12 == C.TIME_UNSET ? k2.e.C0783e.d(jB, j11) : k2.e.C0783e.e(j11 + ((long) iF2));
                        }
                        if (100000 + jB > j10) {
                            return k2.e.C0783e.e(j11 + ((long) j0Var.f()));
                        }
                        iF2 = j0Var.f();
                        j12 = jB;
                    }
                    d(j0Var);
                    iF = j0Var.f();
                }
            }
            return j12 != C.TIME_UNSET ? k2.e.C0783e.f(j12, j11 + ((long) iF)) : k2.e.C0783e.f63567d;
        }

        private static void d(androidx.media3.common.util.j0 j0Var) {
            int iK;
            int iG = j0Var.g();
            if (j0Var.a() < 10) {
                j0Var.W(iG);
                return;
            }
            j0Var.X(9);
            int iH = j0Var.H() & 7;
            if (j0Var.a() < iH) {
                j0Var.W(iG);
                return;
            }
            j0Var.X(iH);
            if (j0Var.a() < 4) {
                j0Var.W(iG);
                return;
            }
            if (z.k(j0Var.e(), j0Var.f()) == 443) {
                j0Var.X(4);
                int iP = j0Var.P();
                if (j0Var.a() < iP) {
                    j0Var.W(iG);
                    return;
                }
                j0Var.X(iP);
            }
            while (j0Var.a() >= 4 && (iK = z.k(j0Var.e(), j0Var.f())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                j0Var.X(4);
                if (j0Var.a() < 2) {
                    j0Var.W(iG);
                    return;
                }
                j0Var.W(Math.min(j0Var.g(), j0Var.f() + j0Var.P()));
            }
        }

        @Override
        public void a() {
            this.f70817b.T(a1.f10043f);
        }

        @Override
        public k2.e.C0783e b(k2.s sVar, long j10) {
            long position = sVar.getPosition();
            int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, sVar.getLength() - position);
            this.f70817b.S(iMin);
            sVar.peekFully(this.f70817b.e(), 0, iMin);
            return c(this.f70817b, j10, position);
        }

        private b(p0 p0Var) {
            this.f70816a = p0Var;
            this.f70817b = new androidx.media3.common.util.j0();
        }
    }

    public z(p0 p0Var, long j10, long j11) {
        super(new k2.e.b(), new b(p0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
