package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class h0 extends k2.e {

    private static final class a implements k2.e.f {

        private final p0 f70486a;

        private final androidx.media3.common.util.j0 f70487b = new androidx.media3.common.util.j0();

        private final int f70488c;

        private final int f70489d;

        public a(int i10, p0 p0Var, int i11) {
            this.f70488c = i10;
            this.f70486a = p0Var;
            this.f70489d = i11;
        }

        private k2.e.C0783e c(androidx.media3.common.util.j0 j0Var, long j10, long j11) {
            int iA;
            int iA2;
            int iG = j0Var.g();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (j0Var.a() >= 188 && (iA2 = (iA = m0.a(j0Var.e(), j0Var.f(), iG)) + 188) <= iG) {
                long jC = m0.c(j0Var, iA, this.f70488c);
                if (jC != C.TIME_UNSET) {
                    long jB = this.f70486a.b(jC);
                    if (jB > j10) {
                        return j14 == C.TIME_UNSET ? k2.e.C0783e.d(jB, j11) : k2.e.C0783e.e(j11 + j13);
                    }
                    if (100000 + jB > j10) {
                        return k2.e.C0783e.e(j11 + ((long) iA));
                    }
                    j13 = iA;
                    j14 = jB;
                }
                j0Var.W(iA2);
                j12 = iA2;
            }
            return j14 != C.TIME_UNSET ? k2.e.C0783e.f(j14, j11 + j12) : k2.e.C0783e.f63567d;
        }

        @Override
        public void a() {
            this.f70487b.T(a1.f10043f);
        }

        @Override
        public k2.e.C0783e b(k2.s sVar, long j10) {
            long position = sVar.getPosition();
            int iMin = (int) Math.min(this.f70489d, sVar.getLength() - position);
            this.f70487b.S(iMin);
            sVar.peekFully(this.f70487b.e(), 0, iMin);
            return c(this.f70487b, j10, position);
        }
    }

    public h0(p0 p0Var, long j10, long j11, int i10, int i11) {
        super(new k2.e.b(), new a(i10, p0Var, i11), j10, 0L, j10 + 1, 0L, j11, 188L, 940);
    }
}
