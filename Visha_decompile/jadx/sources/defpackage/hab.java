package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

public final class hab extends re0 {

    public static final class a implements re0.f {
        public final poa a;
        public final qw7 b = new qw7();
        public final int c;
        public final int d;

        public a(int i, poa poaVar, int i2) {
            this.c = i;
            this.a = poaVar;
            this.d = i2;
        }

        @Override
        public re0.e a(pk3 pk3Var, long j) {
            long position = pk3Var.getPosition();
            int iMin = (int) Math.min(this.d, pk3Var.getLength() - position);
            this.b.K(iMin);
            pk3Var.peekFully(this.b.d(), 0, iMin);
            return b(this.b, j, position);
        }

        public final re0.e b(qw7 qw7Var, long j, long j2) {
            int iA;
            int iA2;
            int iF = qw7Var.f();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (qw7Var.a() >= 188 && (iA2 = (iA = oab.a(qw7Var.d(), qw7Var.e(), iF)) + 188) <= iF) {
                long jC = oab.c(qw7Var, iA, this.c);
                if (jC != C.TIME_UNSET) {
                    long jB = this.a.b(jC);
                    if (jB > j) {
                        return j5 == C.TIME_UNSET ? re0.e.d(jB, j2) : re0.e.e(j2 + j4);
                    }
                    if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB > j) {
                        return re0.e.e(((long) iA) + j2);
                    }
                    j4 = iA;
                    j5 = jB;
                }
                qw7Var.O(iA2);
                j3 = iA2;
            }
            return j5 != C.TIME_UNSET ? re0.e.f(j5, j2 + j3) : re0.e.d;
        }

        @Override
        public void onSeekFinished() {
            this.b.L(blb.f);
        }
    }

    public hab(poa poaVar, long j, long j2, int i, int i2) {
        super(new re0.b(), new a(i, poaVar, i2), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}
