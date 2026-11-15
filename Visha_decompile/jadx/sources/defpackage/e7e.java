package defpackage;

import android.content.Context;
import android.view.Surface;
import androidx.media3.common.C;

public final class e7e {
    public final d7e a;
    public final i7e b;
    public boolean c;
    public long f;
    public boolean i;
    public boolean l;
    public boolean m;
    public int d = 0;
    public long e = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public float j = 1.0f;
    public tbg k = tbg.a;

    public e7e(Context context, d7e d7eVar, long j) {
        this.a = d7eVar;
        this.b = new i7e(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ac, code lost:
    
        if (r17 > androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b7, code lost:
    
        if (r22 >= r26) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bc, code lost:
    
        if (r19.c != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(long j, long j2, long j3, long j4, boolean z, boolean z2, v6e v6eVar) {
        v6e.g(v6eVar);
        if (this.e == C.TIME_UNSET) {
            this.e = j2;
        }
        if (this.g != j) {
            this.b.d(j);
            this.g = j;
        }
        long jN = (long) ((j - j2) / ((double) this.j));
        if (this.c) {
            jN -= kfh.N(this.k.zzb()) - j3;
        }
        v6eVar.a = jN;
        if (z && !z2) {
            return 3;
        }
        if (!this.l) {
            this.m = true;
            if (this.a.a(v6eVar.a, j2, j3, z2, true)) {
                return 4;
            }
            return (!this.c || v6eVar.a >= 30000) ? 5 : 3;
        }
        long j5 = v6eVar.a;
        if (this.h == C.TIME_UNSET || this.i) {
            int i = this.d;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            throw new IllegalStateException();
                        }
                        long jN2 = kfh.N(this.k.zzb()) - this.f;
                        if (this.c) {
                            if (j5 < -30000) {
                            }
                        }
                    }
                }
                return 0;
            }
        }
        if (!this.c || j2 == this.e) {
            return 5;
        }
        long jZzc = this.k.zzc();
        v6eVar.b = this.b.a((v6eVar.a * 1000) + jZzc);
        v6eVar.a = (v6eVar.b - jZzc) / 1000;
        boolean z3 = (this.h == C.TIME_UNSET || this.i) ? false : true;
        if (this.a.a(v6eVar.a, j2, j3, z2, z3)) {
            return 4;
        }
        if (v6eVar.a >= -30000 || z2) {
            return v6eVar.a > 50000 ? 5 : 1;
        }
        return z3 ? 3 : 2;
    }

    public final void b() {
        if (this.d == 0) {
            this.d = 1;
        }
    }

    public final void c(boolean z) {
        this.i = z;
        this.h = C.TIME_UNSET;
    }

    public final void d() {
        this.c = true;
        this.f = kfh.N(this.k.zzb());
        this.b.g();
    }

    public final void e() {
        this.c = false;
        this.h = C.TIME_UNSET;
        this.b.h();
    }

    public final void f(int i) {
        if (i == 0) {
            this.d = 1;
        } else if (i != 1) {
            o(2);
        } else {
            this.d = 0;
        }
    }

    public final void g() {
        this.b.f();
        this.g = C.TIME_UNSET;
        this.e = C.TIME_UNSET;
        o(1);
        this.h = C.TIME_UNSET;
    }

    public final void h(int i) {
        this.b.j(i);
    }

    public final void i(tbg tbgVar) {
        this.k = tbgVar;
    }

    public final void j(float f) {
        this.b.c(f);
    }

    public final void k(Surface surface) {
        this.l = surface != null;
        this.m = false;
        this.b.i(surface);
        o(1);
    }

    public final void l(float f) {
        n7g.d(f > 0.0f);
        if (f == this.j) {
            return;
        }
        this.j = f;
        this.b.e(f);
    }

    public final boolean m(boolean z) {
        if (z && (this.d == 3 || (!this.l && this.m))) {
            this.h = C.TIME_UNSET;
            return true;
        }
        if (this.h == C.TIME_UNSET) {
            return false;
        }
        if (this.k.zzb() < this.h) {
            return true;
        }
        this.h = C.TIME_UNSET;
        return false;
    }

    public final boolean n() {
        int i = this.d;
        this.d = 3;
        this.f = kfh.N(this.k.zzb());
        return i != 3;
    }

    public final void o(int i) {
        this.d = Math.min(this.d, i);
    }
}
