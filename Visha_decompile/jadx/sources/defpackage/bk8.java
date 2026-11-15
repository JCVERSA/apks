package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

public final class bk8 extends re0 {

    public static final class b implements re0.f {
        public final poa a;
        public final qw7 b;

        public static void c(qw7 qw7Var) {
            int iK;
            int iF = qw7Var.f();
            if (qw7Var.a() < 10) {
                qw7Var.O(iF);
                return;
            }
            qw7Var.P(9);
            int iC = qw7Var.C() & 7;
            if (qw7Var.a() < iC) {
                qw7Var.O(iF);
                return;
            }
            qw7Var.P(iC);
            if (qw7Var.a() < 4) {
                qw7Var.O(iF);
                return;
            }
            if (bk8.k(qw7Var.d(), qw7Var.e()) == 443) {
                qw7Var.P(4);
                int I = qw7Var.I();
                if (qw7Var.a() < I) {
                    qw7Var.O(iF);
                    return;
                }
                qw7Var.P(I);
            }
            while (qw7Var.a() >= 4 && (iK = bk8.k(qw7Var.d(), qw7Var.e())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                qw7Var.P(4);
                if (qw7Var.a() < 2) {
                    qw7Var.O(iF);
                    return;
                }
                qw7Var.O(Math.min(qw7Var.f(), qw7Var.e() + qw7Var.I()));
            }
        }

        @Override
        public re0.e a(pk3 pk3Var, long j) {
            long position = pk3Var.getPosition();
            int iMin = (int) Math.min(20000L, pk3Var.getLength() - position);
            this.b.K(iMin);
            pk3Var.peekFully(this.b.d(), 0, iMin);
            return b(this.b, j, position);
        }

        public final re0.e b(qw7 qw7Var, long j, long j2) {
            int iE = -1;
            int iE2 = -1;
            long j3 = -9223372036854775807L;
            while (qw7Var.a() >= 4) {
                if (bk8.k(qw7Var.d(), qw7Var.e()) != 442) {
                    qw7Var.P(1);
                } else {
                    qw7Var.P(4);
                    long jL = ck8.l(qw7Var);
                    if (jL != C.TIME_UNSET) {
                        long jB = this.a.b(jL);
                        if (jB > j) {
                            return j3 == C.TIME_UNSET ? re0.e.d(jB, j2) : re0.e.e(j2 + ((long) iE2));
                        }
                        if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB > j) {
                            return re0.e.e(j2 + ((long) qw7Var.e()));
                        }
                        iE2 = qw7Var.e();
                        j3 = jB;
                    }
                    c(qw7Var);
                    iE = qw7Var.e();
                }
            }
            return j3 != C.TIME_UNSET ? re0.e.f(j3, j2 + ((long) iE)) : re0.e.d;
        }

        @Override
        public void onSeekFinished() {
            this.b.L(blb.f);
        }

        public b(poa poaVar) {
            this.a = poaVar;
            this.b = new qw7();
        }
    }

    public bk8(poa poaVar, long j, long j2) {
        super(new re0.b(), new b(poaVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    public static int k(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
