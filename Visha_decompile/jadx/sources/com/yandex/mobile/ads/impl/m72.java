package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;

final class m72 extends jl {

    public static final class a implements jl.f {
        private final p52 a;
        private final ag1 b = new ag1();
        private final int c;
        private final int d;

        public a(int i, p52 p52Var, int i2) {
            this.c = i;
            this.a = p52Var;
            this.d = i2;
        }

        @Override
        public final void a() {
            this.b.a(f92.f);
        }

        @Override
        public final jl.e a(wz wzVar, long j) throws IOException {
            long jA = wzVar.a();
            int iMin = (int) Math.min(this.d, wzVar.b() - jA);
            this.b.c(iMin);
            wzVar.b(this.b.c(), 0, iMin, false);
            ag1 ag1Var = this.b;
            int iE = ag1Var.e();
            long j2 = -1;
            long j3 = -1;
            long j4 = C.TIME_UNSET;
            while (ag1Var.a() >= 188) {
                byte[] bArrC = ag1Var.c();
                int iD = ag1Var.d();
                while (iD < iE && bArrC[iD] != 71) {
                    iD++;
                }
                int i = iD + 188;
                if (i > iE) {
                    break;
                }
                long jA2 = q72.a(iD, this.c, ag1Var);
                if (jA2 != C.TIME_UNSET) {
                    long jB = this.a.b(jA2);
                    if (jB > j) {
                        return j4 == C.TIME_UNSET ? jl.e.a(jB, jA) : jl.e.a(jA + j3);
                    }
                    if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB > j) {
                        return jl.e.a(jA + ((long) iD));
                    }
                    j4 = jB;
                    j3 = iD;
                }
                ag1Var.e(i);
                j2 = i;
            }
            return j4 != C.TIME_UNSET ? jl.e.b(j4, jA + j2) : jl.e.d;
        }
    }

    public m72(p52 p52Var, long j, long j2, int i, int i2) {
        super(new jl.b(), new a(i, p52Var, i2), j, j + 1, 0L, j2, 188L, 940);
    }
}
