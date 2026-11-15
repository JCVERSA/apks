package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.io.IOException;

public final class ip implements pw0, pw0.a {
    public final pw0 b;

    @Nullable
    private pw0.a c;
    private a[] d = new a[0];
    private long e;
    long f;
    long g;

    public final class a implements lt1 {
        public final lt1 a;
        private boolean b;

        public a(lt1 lt1Var) {
            this.a = lt1Var;
        }

        @Override
        public final boolean d() {
            return ip.this.e == C.TIME_UNSET && this.a.d();
        }

        @Override
        public final void a() throws IOException {
            this.a.a();
        }

        @Override
        public final int a(kc0 kc0Var, ry ryVar, int i) {
            if (ip.this.e != C.TIME_UNSET) {
                return -3;
            }
            if (this.b) {
                ryVar.d(4);
                return -4;
            }
            int iA = this.a.a(kc0Var, ryVar, i);
            if (iA == -5) {
                jc0 jc0Var = kc0Var.b;
                jc0Var.getClass();
                int i2 = jc0Var.C;
                if (i2 != 0 || jc0Var.D != 0) {
                    ip ipVar = ip.this;
                    if (ipVar.f != 0) {
                        i2 = 0;
                    }
                    kc0Var.b = jc0Var.a().d(i2).e(ipVar.g == Long.MIN_VALUE ? jc0Var.D : 0).a();
                }
                return -5;
            }
            ip ipVar2 = ip.this;
            long j = ipVar2.g;
            if (j == Long.MIN_VALUE || ((iA != -4 || ryVar.f < j) && !(iA == -3 && ipVar2.getBufferedPositionUs() == Long.MIN_VALUE && !ryVar.e))) {
                return iA;
            }
            ryVar.b();
            ryVar.d(4);
            this.b = true;
            return -4;
        }

        @Override
        public final int a(long j) {
            if (ip.this.e != C.TIME_UNSET) {
                return -3;
            }
            return this.a.a(j);
        }
    }

    public ip(pw0 pw0Var, boolean z, long j, long j2) {
        this.b = pw0Var;
        this.e = z ? j : C.TIME_UNSET;
        this.f = j;
        this.g = j2;
    }

    @Override
    public final boolean continueLoading(long j) {
        return this.b.continueLoading(j);
    }

    @Override
    public final void discardBuffer(long j, boolean z) {
        this.b.discardBuffer(j, z);
    }

    @Override
    public final long getBufferedPositionUs() {
        long bufferedPositionUs = this.b.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || bufferedPositionUs < j) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public final long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.b.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || nextLoadPositionUs < j) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public final z52 getTrackGroups() {
        return this.b.getTrackGroups();
    }

    @Override
    public final boolean isLoading() {
        return this.b.isLoading();
    }

    @Override
    public final void maybeThrowPrepareError() throws IOException {
        this.b.maybeThrowPrepareError();
    }

    @Override
    public final long readDiscontinuity() {
        long j = this.e;
        if (j != C.TIME_UNSET) {
            this.e = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j;
        }
        long discontinuity2 = this.b.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (discontinuity2 < this.f) {
            throw new IllegalStateException();
        }
        long j2 = this.g;
        if (j2 == Long.MIN_VALUE || discontinuity2 <= j2) {
            return discontinuity2;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void reevaluateBuffer(long j) {
        this.b.reevaluateBuffer(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        if (r0 > r5) goto L17;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long seekToUs(long j) {
        this.e = C.TIME_UNSET;
        for (a aVar : this.d) {
            if (aVar != null) {
                aVar.b = false;
            }
        }
        long jSeekToUs = this.b.seekToUs(j);
        if (jSeekToUs != j) {
            if (jSeekToUs >= this.f) {
                long j2 = this.g;
                if (j2 != Long.MIN_VALUE) {
                }
            }
            throw new IllegalStateException();
        }
        return jSeekToUs;
    }

    @Override
    public final long a(long j, fx1 fx1Var) {
        long j2 = this.f;
        if (j == j2) {
            return j2;
        }
        int i = f92.a;
        long jMax = Math.max(0L, Math.min(fx1Var.a, j - j2));
        long j3 = fx1Var.b;
        long j4 = this.g;
        long jMax2 = Math.max(0L, Math.min(j3, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j));
        if (jMax != fx1Var.a || jMax2 != fx1Var.b) {
            fx1Var = new fx1(jMax, jMax2);
        }
        return this.b.a(j, fx1Var);
    }

    @Override
    public final void a(mx1 mx1Var) {
        pw0.a aVar = this.c;
        aVar.getClass();
        aVar.a(this);
    }

    @Override
    public final void a(pw0 pw0Var) {
        pw0.a aVar = this.c;
        aVar.getClass();
        aVar.a((pw0) this);
    }

    @Override
    public final void a(pw0.a aVar, long j) {
        this.c = aVar;
        this.b.a(this, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
    
        if (r1 > r3) goto L32;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(h70[] h70VarArr, boolean[] zArr, lt1[] lt1VarArr, boolean[] zArr2, long j) {
        this.d = new a[lt1VarArr.length];
        lt1[] lt1VarArr2 = new lt1[lt1VarArr.length];
        int i = 0;
        while (true) {
            lt1 lt1Var = null;
            if (i >= lt1VarArr.length) {
                break;
            }
            a[] aVarArr = this.d;
            a aVar = (a) lt1VarArr[i];
            aVarArr[i] = aVar;
            if (aVar != null) {
                lt1Var = aVar.a;
            }
            lt1VarArr2[i] = lt1Var;
            i++;
        }
        long jA = this.b.a(h70VarArr, zArr, lt1VarArr2, zArr2, j);
        long j2 = this.e;
        long j3 = C.TIME_UNSET;
        if (j2 != C.TIME_UNSET) {
            long j4 = this.f;
            if (j == j4 && j4 != 0) {
                for (h70 h70Var : h70VarArr) {
                    if (h70Var != null) {
                        jc0 jc0VarE = h70Var.e();
                        if (!w01.a(jc0VarE.m, jc0VarE.j)) {
                            j3 = jA;
                            break;
                        }
                    }
                }
            }
        }
        this.e = j3;
        if (jA != j) {
            if (jA >= this.f) {
                long j5 = this.g;
                if (j5 != Long.MIN_VALUE) {
                }
            }
            throw new IllegalStateException();
        }
        for (int i2 = 0; i2 < lt1VarArr.length; i2++) {
            lt1 lt1Var2 = lt1VarArr2[i2];
            if (lt1Var2 == null) {
                this.d[i2] = null;
            } else {
                a[] aVarArr2 = this.d;
                a aVar2 = aVarArr2[i2];
                if (aVar2 == null || aVar2.a != lt1Var2) {
                    aVarArr2[i2] = new a(lt1Var2);
                }
            }
            lt1VarArr[i2] = this.d[i2];
        }
        return jA;
    }

    public final void a(long j) {
        this.f = 0L;
        this.g = j;
    }
}
