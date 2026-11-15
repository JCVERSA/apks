package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.EOFException;
import java.io.IOException;

final class j00 implements de1 {
    private final ce1 a;
    private final long b;
    private final long c;
    private final y22 d;
    private int e;
    private long f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;

    public final class a implements ex1 {
        @Override
        public final boolean b() {
            return true;
        }

        @Override
        public final long c() {
            j00 j00Var = j00.this;
            return j00Var.d.a(j00Var.f);
        }

        private a() {
        }

        @Override
        public final ex1.a b(long j) {
            long jB = j00.this.d.b(j);
            j00 j00Var = j00.this;
            long j2 = j00Var.b;
            long j3 = j00Var.c;
            int i = f92.a;
            gx1 gx1Var = new gx1(j, Math.max(j2, Math.min(((((j3 - j2) * jB) / j00Var.f) + j2) - 30000, j3 - 1)));
            return new ex1.a(gx1Var, gx1Var);
        }
    }

    public j00(y22 y22Var, long j, long j2, long j3, long j4, boolean z) {
        hg.a(j >= 0 && j2 > j);
        this.d = y22Var;
        this.b = j;
        this.c = j2;
        if (j3 == j2 - j || z) {
            this.f = j4;
            this.e = 4;
        } else {
            this.e = 0;
        }
        this.a = new ce1();
    }

    @Override
    @Nullable
    public final ex1 a() {
        if (this.f != 0) {
            return new a();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    @Override
    public final long a(wz wzVar) throws IOException {
        long jMax;
        long j;
        int i = this.e;
        if (i == 0) {
            long jA = wzVar.a();
            this.g = jA;
            this.e = 1;
            long j2 = this.c - 65307;
            if (j2 > jA) {
                return j2;
            }
        } else if (i != 1) {
            if (i == 2) {
                if (this.i == this.j) {
                    jMax = -1;
                    j = -1;
                } else {
                    long jA2 = wzVar.a();
                    if (!this.a.a(wzVar, this.j)) {
                        jMax = this.i;
                        if (jMax == jA2) {
                            throw new IOException("No ogg page can be found.");
                        }
                        j = -1;
                    } else {
                        this.a.a(wzVar, false);
                        wzVar.c();
                        long j3 = this.h;
                        ce1 ce1Var = this.a;
                        long j4 = ce1Var.b;
                        long j5 = j3 - j4;
                        int i2 = ce1Var.d + ce1Var.e;
                        if (0 > j5 || j5 >= 72000) {
                            if (j5 < 0) {
                                this.j = jA2;
                                this.l = j4;
                            } else {
                                this.i = wzVar.a() + ((long) i2);
                                this.k = this.a.b;
                            }
                            long j6 = this.j;
                            long j7 = this.i;
                            if (j6 - j7 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                                this.j = j7;
                                jMax = j7;
                            } else {
                                long jA3 = wzVar.a() - (((long) i2) * (j5 <= 0 ? 2L : 1L));
                                long j8 = this.j;
                                long j9 = this.i;
                                int i3 = f92.a;
                                jMax = Math.max(j9, Math.min(jA3 + (((j8 - j9) * j5) / (this.l - this.k)), j8 - 1));
                            }
                        } else {
                            jMax = -1;
                        }
                        j = -1;
                    }
                }
                if (jMax != j) {
                    return jMax;
                }
                this.e = 3;
            } else {
                if (i != 3) {
                    if (i == 4) {
                        return -1L;
                    }
                    throw new IllegalStateException();
                }
                j = -1;
            }
            while (true) {
                this.a.a(wzVar, j);
                this.a.a(wzVar, false);
                ce1 ce1Var2 = this.a;
                if (ce1Var2.b > this.h) {
                    wzVar.c();
                    this.e = 4;
                    return -(this.k + 2);
                }
                wzVar.a(ce1Var2.d + ce1Var2.e);
                this.i = wzVar.a();
                this.k = this.a.b;
                j = -1;
            }
        }
        ce1 ce1Var3 = this.a;
        ce1Var3.a = 0;
        ce1Var3.b = 0L;
        ce1Var3.c = 0;
        ce1Var3.d = 0;
        ce1Var3.e = 0;
        if (ce1Var3.a(wzVar, -1L)) {
            this.a.a(wzVar, false);
            ce1 ce1Var4 = this.a;
            wzVar.a(ce1Var4.d + ce1Var4.e);
            long j10 = this.a.b;
            while (true) {
                ce1 ce1Var5 = this.a;
                if ((ce1Var5.a & 4) == 4 || !ce1Var5.a(wzVar, -1L) || wzVar.a() >= this.c || !this.a.a(wzVar, true)) {
                    break;
                }
                ce1 ce1Var6 = this.a;
                try {
                    wzVar.a(ce1Var6.d + ce1Var6.e);
                    j10 = this.a.b;
                } catch (EOFException unused) {
                }
            }
            this.f = j10;
            this.e = 4;
            return this.g;
        }
        throw new EOFException();
    }

    @Override
    public final void a(long j) {
        long j2 = this.f - 1;
        int i = f92.a;
        this.h = Math.max(0L, Math.min(j, j2));
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }
}
