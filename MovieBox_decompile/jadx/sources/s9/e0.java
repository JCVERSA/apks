package s9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class e0 extends i9.a {

    private static final class a implements i9.a.f {

        private final l0 f71662a;

        private final com.google.android.exoplayer2.util.d0 f71663b = new com.google.android.exoplayer2.util.d0();

        private final int f71664c;

        private final int f71665d;

        public a(int i10, l0 l0Var, int i11) {
            this.f71664c = i10;
            this.f71662a = l0Var;
            this.f71665d = i11;
        }

        private i9.a.e c(com.google.android.exoplayer2.util.d0 d0Var, long j10, long j11) {
            int iA;
            int iA2;
            int iF = d0Var.f();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (d0Var.a() >= 188 && (iA2 = (iA = j0.a(d0Var.d(), d0Var.e(), iF)) + 188) <= iF) {
                long jC = j0.c(d0Var, iA, this.f71664c);
                if (jC != C.TIME_UNSET) {
                    long jB = this.f71662a.b(jC);
                    if (jB > j10) {
                        return j14 == C.TIME_UNSET ? i9.a.e.d(jB, j11) : i9.a.e.e(j11 + j13);
                    }
                    if (100000 + jB > j10) {
                        return i9.a.e.e(j11 + ((long) iA));
                    }
                    j13 = iA;
                    j14 = jB;
                }
                d0Var.P(iA2);
                j12 = iA2;
            }
            return j14 != C.TIME_UNSET ? i9.a.e.f(j14, j11 + j12) : i9.a.e.f61880d;
        }

        @Override
        public void a() {
            this.f71663b.M(p0.f26859f);
        }

        @Override
        public i9.a.e b(i9.m mVar, long j10) {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(this.f71665d, mVar.getLength() - position);
            this.f71663b.L(iMin);
            mVar.peekFully(this.f71663b.d(), 0, iMin);
            return c(this.f71663b, j10, position);
        }
    }

    public e0(l0 l0Var, long j10, long j11, int i10, int i11) {
        super(new i9.a.b(), new a(i10, l0Var, i11), j10, 0L, j10 + 1, 0L, j11, 188L, 940);
    }
}
