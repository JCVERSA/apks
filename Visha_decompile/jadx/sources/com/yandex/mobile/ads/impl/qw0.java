package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;

final class qw0 {
    public final pw0 a;
    public final Object b;
    public final lt1[] c;
    public boolean d;
    public boolean e;
    public sw0 f;
    public boolean g;
    private final boolean[] h;
    private final zo1[] i;
    private final f62 j;
    private final yw0 k;

    @Nullable
    private qw0 l;
    private z52 m;
    private g62 n;
    private long o;

    public qw0(zo1[] zo1VarArr, long j, f62 f62Var, cd cdVar, yw0 yw0Var, sw0 sw0Var, g62 g62Var) {
        this.i = zo1VarArr;
        this.o = j;
        this.j = f62Var;
        this.k = yw0Var;
        vw0.b bVar = sw0Var.a;
        this.b = bVar.a;
        this.f = sw0Var;
        this.m = z52.e;
        this.n = g62Var;
        this.c = new lt1[zo1VarArr.length];
        this.h = new boolean[zo1VarArr.length];
        this.a = a(bVar, yw0Var, cdVar, sw0Var.b, sw0Var.d);
    }

    public final long a(g62 g62Var, long j, boolean z, boolean[] zArr) {
        g62 g62Var2;
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= g62Var.a) {
                break;
            }
            boolean[] zArr2 = this.h;
            if (z || (g62Var2 = this.n) == null || !f92.a(g62Var.b[i2], g62Var2.b[i2]) || !f92.a(g62Var.c[i2], g62Var2.c[i2])) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        lt1[] lt1VarArr = this.c;
        int i3 = 0;
        while (true) {
            zo1[] zo1VarArr = this.i;
            if (i3 >= zo1VarArr.length) {
                break;
            }
            if (((sk) zo1VarArr[i3]).m() == -2) {
                lt1VarArr[i3] = null;
            }
            i3++;
        }
        a();
        this.n = g62Var;
        if (this.l == null) {
            int i4 = 0;
            while (true) {
                g62 g62Var3 = this.n;
                if (i4 >= g62Var3.a) {
                    break;
                }
                boolean zA = g62Var3.a(i4);
                h70 h70Var = this.n.c[i4];
                if (zA && h70Var != null) {
                    h70Var.d();
                }
                i4++;
            }
        }
        long jA = this.a.a(g62Var.c, this.h, this.c, zArr, j);
        lt1[] lt1VarArr2 = this.c;
        int i5 = 0;
        while (true) {
            zo1[] zo1VarArr2 = this.i;
            if (i5 >= zo1VarArr2.length) {
                break;
            }
            if (((sk) zo1VarArr2[i5]).m() == -2 && this.n.a(i5)) {
                lt1VarArr2[i5] = new d50();
            }
            i5++;
        }
        this.e = false;
        while (true) {
            lt1[] lt1VarArr3 = this.c;
            if (i >= lt1VarArr3.length) {
                return jA;
            }
            if (lt1VarArr3[i] != null) {
                if (!g62Var.a(i)) {
                    throw new IllegalStateException();
                }
                if (((sk) this.i[i]).m() != -2) {
                    this.e = true;
                }
            } else if (g62Var.c[i] != null) {
                throw new IllegalStateException();
            }
            i++;
        }
    }

    @Nullable
    public final qw0 b() {
        return this.l;
    }

    public final long c() {
        return this.o;
    }

    public final long d() {
        return this.f.b + this.o;
    }

    public final z52 e() {
        return this.m;
    }

    public final g62 f() {
        return this.n;
    }

    public final void g() {
        a();
        yw0 yw0Var = this.k;
        pw0 pw0Var = this.a;
        try {
            if (pw0Var instanceof ip) {
                yw0Var.a(((ip) pw0Var).b);
            } else {
                yw0Var.a(pw0Var);
            }
        } catch (RuntimeException e) {
            et0.a("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final void h() {
        this.o = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
    }

    public final void b(long j) {
        if (this.l != null) {
            throw new IllegalStateException();
        }
        if (this.d) {
            this.a.reevaluateBuffer(j - this.o);
        }
    }

    public final long c(long j) {
        return j - this.o;
    }

    public final long d(long j) {
        return j + this.o;
    }

    public final g62 b(float f, i52 i52Var) throws m60 {
        g62 g62VarA = this.j.a(this.i, this.m, this.f.a, i52Var);
        for (h70 h70Var : g62VarA.c) {
            if (h70Var != null) {
                h70Var.a(f);
            }
        }
        return g62VarA;
    }

    public final void a(g62 g62Var, long j) {
        a(g62Var, j, false, new boolean[this.i.length]);
    }

    public final void a(long j) {
        if (this.l == null) {
            this.a.continueLoading(j - this.o);
            return;
        }
        throw new IllegalStateException();
    }

    private static pw0 a(vw0.b bVar, yw0 yw0Var, cd cdVar, long j, long j2) {
        iu0 iu0VarA = yw0Var.a(bVar, cdVar, j);
        return j2 != C.TIME_UNSET ? new ip(iu0VarA, true, 0L, j2) : iu0VarA;
    }

    private void a() {
        if (this.l != null) {
            return;
        }
        int i = 0;
        while (true) {
            g62 g62Var = this.n;
            if (i >= g62Var.a) {
                return;
            }
            boolean zA = g62Var.a(i);
            h70 h70Var = this.n.c[i];
            if (zA && h70Var != null) {
                h70Var.c();
            }
            i++;
        }
    }

    public final void a(float f, i52 i52Var) throws m60 {
        this.d = true;
        this.m = this.a.getTrackGroups();
        g62 g62VarB = b(f, i52Var);
        sw0 sw0Var = this.f;
        long jMax = sw0Var.b;
        long j = sw0Var.e;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a(g62VarB, jMax, false, new boolean[this.i.length]);
        long j2 = this.o;
        sw0 sw0Var2 = this.f;
        long j3 = sw0Var2.b;
        this.o = (j3 - jA) + j2;
        if (jA != j3) {
            sw0Var2 = new sw0(sw0Var2.a, jA, sw0Var2.c, sw0Var2.d, sw0Var2.e, sw0Var2.f, sw0Var2.g, sw0Var2.h, sw0Var2.i);
        }
        this.f = sw0Var2;
    }

    public final void a(@Nullable qw0 qw0Var) {
        if (qw0Var == this.l) {
            return;
        }
        a();
        this.l = qw0Var;
        if (qw0Var != null) {
            return;
        }
        int i = 0;
        while (true) {
            g62 g62Var = this.n;
            if (i >= g62Var.a) {
                return;
            }
            boolean zA = g62Var.a(i);
            h70 h70Var = this.n.c[i];
            if (zA && h70Var != null) {
                h70Var.d();
            }
            i++;
        }
    }
}
