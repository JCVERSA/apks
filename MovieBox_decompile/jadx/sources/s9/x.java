package s9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class x extends i9.a {

    private static final class b implements i9.a.f {

        private final l0 f71966a;

        private final com.google.android.exoplayer2.util.d0 f71967b;

        private i9.a.e c(com.google.android.exoplayer2.util.d0 d0Var, long j10, long j11) {
            int iE = -1;
            int iE2 = -1;
            long j12 = -9223372036854775807L;
            while (d0Var.a() >= 4) {
                if (x.k(d0Var.d(), d0Var.e()) != 442) {
                    d0Var.Q(1);
                } else {
                    d0Var.Q(4);
                    long jL = y.l(d0Var);
                    if (jL != C.TIME_UNSET) {
                        long jB = this.f71966a.b(jL);
                        if (jB > j10) {
                            return j12 == C.TIME_UNSET ? i9.a.e.d(jB, j11) : i9.a.e.e(j11 + ((long) iE2));
                        }
                        if (100000 + jB > j10) {
                            return i9.a.e.e(j11 + ((long) d0Var.e()));
                        }
                        iE2 = d0Var.e();
                        j12 = jB;
                    }
                    d(d0Var);
                    iE = d0Var.e();
                }
            }
            return j12 != C.TIME_UNSET ? i9.a.e.f(j12, j11 + ((long) iE)) : i9.a.e.f61880d;
        }

        private static void d(com.google.android.exoplayer2.util.d0 d0Var) {
            int iK;
            int iF = d0Var.f();
            if (d0Var.a() < 10) {
                d0Var.P(iF);
                return;
            }
            d0Var.Q(9);
            int iD = d0Var.D() & 7;
            if (d0Var.a() < iD) {
                d0Var.P(iF);
                return;
            }
            d0Var.Q(iD);
            if (d0Var.a() < 4) {
                d0Var.P(iF);
                return;
            }
            if (x.k(d0Var.d(), d0Var.e()) == 443) {
                d0Var.Q(4);
                int iJ = d0Var.J();
                if (d0Var.a() < iJ) {
                    d0Var.P(iF);
                    return;
                }
                d0Var.Q(iJ);
            }
            while (d0Var.a() >= 4 && (iK = x.k(d0Var.d(), d0Var.e())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                d0Var.Q(4);
                if (d0Var.a() < 2) {
                    d0Var.P(iF);
                    return;
                }
                d0Var.P(Math.min(d0Var.f(), d0Var.e() + d0Var.J()));
            }
        }

        @Override
        public void a() {
            this.f71967b.M(p0.f26859f);
        }

        @Override
        public i9.a.e b(i9.m mVar, long j10) {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, mVar.getLength() - position);
            this.f71967b.L(iMin);
            mVar.peekFully(this.f71967b.d(), 0, iMin);
            return c(this.f71967b, j10, position);
        }

        private b(l0 l0Var) {
            this.f71966a = l0Var;
            this.f71967b = new com.google.android.exoplayer2.util.d0();
        }
    }

    public x(l0 l0Var, long j10, long j11) {
        super(new i9.a.b(), new b(l0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
