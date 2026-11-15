package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;

final class wm1 extends jl {

    public static final class a implements jl.f {
        private final p52 a;
        private final ag1 b;

        @Override
        public final void a() {
            this.b.a(f92.f);
        }

        private a(p52 p52Var) {
            this.a = p52Var;
            this.b = new ag1();
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00e8  */
        @Override
        public final jl.e a(wz wzVar, long j) throws IOException {
            int iA;
            long jA = wzVar.a();
            int iMin = (int) Math.min(20000L, wzVar.b() - jA);
            this.b.c(iMin);
            wzVar.b(this.b.c(), 0, iMin, false);
            ag1 ag1Var = this.b;
            int iD = -1;
            int iD2 = -1;
            long j2 = -9223372036854775807L;
            while (ag1Var.a() >= 4) {
                if (wm1.a(ag1Var.d(), ag1Var.c()) != 442) {
                    ag1Var.f(1);
                } else {
                    ag1Var.f(4);
                    long jA2 = xm1.a(ag1Var);
                    if (jA2 != C.TIME_UNSET) {
                        long jB = this.a.b(jA2);
                        if (jB > j) {
                            return j2 == C.TIME_UNSET ? jl.e.a(jB, jA) : jl.e.a(jA + ((long) iD2));
                        }
                        if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB > j) {
                            return jl.e.a(jA + ((long) ag1Var.d()));
                        }
                        iD2 = ag1Var.d();
                        j2 = jB;
                    }
                    int iE = ag1Var.e();
                    if (ag1Var.a() >= 10) {
                        ag1Var.f(9);
                        int iT = ag1Var.t() & 7;
                        if (ag1Var.a() >= iT) {
                            ag1Var.f(iT);
                            if (ag1Var.a() >= 4) {
                                if (wm1.a(ag1Var.d(), ag1Var.c()) != 443) {
                                    while (ag1Var.a() >= 4) {
                                        iA = wm1.a(ag1Var.d(), ag1Var.c());
                                        if (iA == 442) {
                                            break;
                                        }
                                        break;
                                    }
                                }
                                ag1Var.f(4);
                                int iZ = ag1Var.z();
                                if (ag1Var.a() < iZ) {
                                    ag1Var.e(iE);
                                } else {
                                    ag1Var.f(iZ);
                                    while (ag1Var.a() >= 4) {
                                        iA = wm1.a(ag1Var.d(), ag1Var.c());
                                        if (iA == 442 || iA == 441 || (iA >>> 8) != 1) {
                                            break;
                                        }
                                        ag1Var.f(4);
                                        if (ag1Var.a() < 2) {
                                            ag1Var.e(iE);
                                            break;
                                        }
                                        ag1Var.e(Math.min(ag1Var.e(), ag1Var.d() + ag1Var.z()));
                                    }
                                }
                            } else {
                                ag1Var.e(iE);
                            }
                        } else {
                            ag1Var.e(iE);
                        }
                    } else {
                        ag1Var.e(iE);
                    }
                    iD = ag1Var.d();
                }
            }
            return j2 != C.TIME_UNSET ? jl.e.b(j2, jA + ((long) iD)) : jl.e.d;
        }
    }

    public wm1(p52 p52Var, long j, long j2) {
        super(new jl.b(), new a(p52Var), j, j + 1, 0L, j2, 188L, 1000);
    }

    public static int a(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
