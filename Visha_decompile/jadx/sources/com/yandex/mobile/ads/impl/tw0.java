package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;

final class tw0 {
    private final i52.b a = new i52.b();
    private final i52.d b = new i52.d();
    private final ed c;
    private final Handler d;
    private long e;
    private int f;
    private boolean g;

    @Nullable
    private qw0 h;

    @Nullable
    private qw0 i;

    @Nullable
    private qw0 j;
    private int k;

    @Nullable
    private Object l;
    private long m;

    public tw0(ed edVar, Handler handler) {
        this.c = edVar;
        this.d = handler;
    }

    private void g() {
        int i = kk0.d;
        final kk0.a aVar = new kk0.a();
        for (qw0 qw0VarB = this.h; qw0VarB != null; qw0VarB = qw0VarB.b()) {
            aVar.b(qw0VarB.f.a);
        }
        qw0 qw0Var = this.i;
        final vw0.b bVar = qw0Var == null ? null : qw0Var.f.a;
        this.d.post(new Runnable() {
            @Override
            public final void run() {
                this.b.a(aVar, bVar);
            }
        });
    }

    public final qw0 b() {
        qw0 qw0Var = this.i;
        if (qw0Var == null || qw0Var.b() == null) {
            throw new IllegalStateException();
        }
        this.i = this.i.b();
        g();
        return this.i;
    }

    public final void c() {
        if (this.k == 0) {
            return;
        }
        qw0 qw0VarB = this.h;
        if (qw0VarB == null) {
            throw new IllegalStateException();
        }
        this.l = qw0VarB.b;
        this.m = qw0VarB.f.a.d;
        while (qw0VarB != null) {
            qw0VarB.g();
            qw0VarB = qw0VarB.b();
        }
        this.h = null;
        this.j = null;
        this.i = null;
        this.k = 0;
        g();
    }

    @Nullable
    public final qw0 d() {
        return this.j;
    }

    @Nullable
    public final qw0 e() {
        return this.h;
    }

    @Nullable
    public final qw0 f() {
        return this.i;
    }

    public final boolean h() {
        qw0 qw0Var = this.j;
        return qw0Var == null || (!qw0Var.f.i && qw0Var.d && ((!qw0Var.e || qw0Var.a.getBufferedPositionUs() == Long.MIN_VALUE) && this.j.f.e != C.TIME_UNSET && this.k < 100));
    }

    @Nullable
    public final qw0 a() {
        qw0 qw0Var = this.h;
        if (qw0Var == null) {
            return null;
        }
        if (qw0Var == this.i) {
            this.i = qw0Var.b();
        }
        this.h.g();
        int i = this.k - 1;
        this.k = i;
        if (i == 0) {
            this.j = null;
            qw0 qw0Var2 = this.h;
            this.l = qw0Var2.b;
            this.m = qw0Var2.f.a.d;
        }
        this.h = this.h.b();
        g();
        return this.h;
    }

    public final qw0 a(zo1[] zo1VarArr, f62 f62Var, cd cdVar, yw0 yw0Var, sw0 sw0Var, g62 g62Var) {
        qw0 qw0Var = this.j;
        qw0 qw0Var2 = new qw0(zo1VarArr, qw0Var == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : (qw0Var.c() + this.j.f.e) - sw0Var.b, f62Var, cdVar, yw0Var, sw0Var, g62Var);
        qw0 qw0Var3 = this.j;
        if (qw0Var3 != null) {
            qw0Var3.a(qw0Var2);
        } else {
            this.h = qw0Var2;
            this.i = qw0Var2;
        }
        this.l = null;
        this.j = qw0Var2;
        this.k++;
        g();
        return qw0Var2;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e3  */
    @Nullable
    private sw0 a(i52 i52Var, qw0 qw0Var, long j) {
        long jC;
        long jC2;
        long j2;
        long j3;
        long j4;
        boolean z;
        long j5;
        sw0 sw0Var = qw0Var.f;
        long jC3 = (qw0Var.c() + sw0Var.e) - j;
        if (sw0Var.g) {
            int iA = i52Var.a(i52Var.a(sw0Var.a.a), this.a, this.b, this.f, this.g);
            if (iA == -1) {
                return null;
            }
            int i = i52Var.a(iA, this.a, true).d;
            Object obj = this.a.c;
            obj.getClass();
            long j6 = sw0Var.a.d;
            long j7 = 0;
            if (i52Var.a(i, this.b, 0L).p == iA) {
                Pair<Object, Long> pairA = i52Var.a(this.b, this.a, i, C.TIME_UNSET, Math.max(0L, jC3));
                if (pairA == null) {
                    return null;
                }
                obj = pairA.first;
                long jLongValue = ((Long) pairA.second).longValue();
                qw0 qw0VarB = qw0Var.b();
                if (qw0VarB != null && qw0VarB.b.equals(obj)) {
                    j5 = qw0VarB.f.a.d;
                } else {
                    j5 = this.e;
                    this.e = 1 + j5;
                }
                j2 = jLongValue;
                j7 = -9223372036854775807L;
                j6 = j5;
            } else {
                j2 = 0;
            }
            vw0.b bVarA = a(i52Var, obj, j2, j6, this.b, this.a);
            if (j7 == C.TIME_UNSET || sw0Var.c == C.TIME_UNSET) {
                j3 = j7;
                j4 = j2;
            } else {
                if (i52Var.a(sw0Var.a.a, this.a).a() > 0) {
                    i52.b bVar = this.a;
                    z = bVar.f(bVar.d());
                }
                if (bVarA.a() && z) {
                    j3 = sw0Var.c;
                    j4 = j2;
                } else if (z) {
                    j4 = sw0Var.c;
                    j3 = j7;
                } else {
                    j3 = j7;
                    j4 = j2;
                }
            }
            i52Var.a(bVarA.a, this.a);
            if (bVarA.a()) {
                return a(i52Var, bVarA.a, bVarA.b, bVarA.c, j3, bVarA.d);
            }
            return a(i52Var, bVarA.a, j4, j3, bVarA.d);
        }
        vw0.b bVar2 = sw0Var.a;
        i52Var.a(bVar2.a, this.a);
        if (bVar2.a()) {
            int i2 = bVar2.b;
            int iA2 = this.a.a(i2);
            if (iA2 == -1) {
                return null;
            }
            int iC = this.a.c(i2, bVar2.c);
            if (iC < iA2) {
                return a(i52Var, bVar2.a, i2, iC, sw0Var.c, bVar2.d);
            }
            long jLongValue2 = sw0Var.c;
            if (jLongValue2 == C.TIME_UNSET) {
                i52.d dVar = this.b;
                i52.b bVar3 = this.a;
                Pair<Object, Long> pairA2 = i52Var.a(dVar, bVar3, bVar3.d, C.TIME_UNSET, Math.max(0L, jC3));
                if (pairA2 == null) {
                    return null;
                }
                jLongValue2 = ((Long) pairA2.second).longValue();
            }
            Object obj2 = bVar2.a;
            int i3 = bVar2.b;
            i52Var.a(obj2, this.a);
            long jB = this.a.b(i3);
            if (jB == Long.MIN_VALUE) {
                jC2 = this.a.e;
            } else {
                jC2 = this.a.c(i3) + jB;
            }
            return a(i52Var, bVar2.a, Math.max(jC2, jLongValue2), sw0Var.c, bVar2.d);
        }
        int iD = this.a.d(bVar2.e);
        boolean z2 = this.a.f(bVar2.e) && this.a.b(bVar2.e, iD) == 3;
        if (iD != this.a.a(bVar2.e) && !z2) {
            return a(i52Var, bVar2.a, bVar2.e, iD, sw0Var.e, bVar2.d);
        }
        Object obj3 = bVar2.a;
        int i4 = bVar2.e;
        i52Var.a(obj3, this.a);
        long jB2 = this.a.b(i4);
        if (jB2 == Long.MIN_VALUE) {
            jC = this.a.e;
        } else {
            jC = this.a.c(i4) + jB2;
        }
        return a(i52Var, bVar2.a, jC, sw0Var.e, bVar2.d);
    }

    private sw0 a(i52 i52Var, Object obj, int i, int i2, long j, long j2) {
        vw0.b bVar = new vw0.b(obj, i, i2, j2);
        long jA = i52Var.a(obj, this.a).a(i, i2);
        long jB = i2 == this.a.d(i) ? this.a.b() : 0L;
        return new sw0(bVar, (jA == C.TIME_UNSET || jB < jA) ? jB : Math.max(0L, jA - 1), j, C.TIME_UNSET, jA, this.a.f(i), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    private sw0 a(i52 i52Var, Object obj, long j, long j2, long j3) {
        boolean z;
        boolean z2;
        long jB;
        long jMax;
        i52Var.a(obj, this.a);
        int iA = this.a.a(j);
        if (iA == -1) {
            if (this.a.a() > 0) {
                i52.b bVar = this.a;
                z = bVar.f(bVar.d());
            }
        } else {
            if (this.a.f(iA)) {
                long jB2 = this.a.b(iA);
                i52.b bVar2 = this.a;
                if (jB2 == bVar2.e && bVar2.e(iA)) {
                    iA = -1;
                }
            }
        }
        vw0.b bVar3 = new vw0.b(iA, j3, obj);
        boolean z3 = !bVar3.a() && iA == -1;
        if (bVar3.a() || iA != -1) {
            z2 = false;
        } else {
            if (i52Var.a(i52Var.a(obj, this.a).d, this.b, 0L).q == i52Var.a(obj)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        boolean zA = a(i52Var, bVar3, z3);
        boolean z4 = iA != -1 && this.a.f(iA);
        if (iA != -1) {
            jB = this.a.b(iA);
        } else {
            jB = z ? this.a.e : -9223372036854775807L;
        }
        long j4 = (jB == C.TIME_UNSET || jB == Long.MIN_VALUE) ? this.a.e : jB;
        if (j4 == C.TIME_UNSET || j < j4) {
            jMax = j;
        } else {
            jMax = Math.max(0L, j4 - ((long) ((zA || !z) ? 1 : 0)));
        }
        return new sw0(bVar3, jMax, j2, jB, j4, z4, z3, z2, zA);
    }

    @Nullable
    public final sw0 a(long j, zh1 zh1Var) {
        qw0 qw0Var = this.j;
        if (qw0Var == null) {
            i52 i52Var = zh1Var.a;
            vw0.b bVar = zh1Var.b;
            long j2 = zh1Var.c;
            long j3 = zh1Var.r;
            i52Var.a(bVar.a, this.a);
            if (bVar.a()) {
                return a(i52Var, bVar.a, bVar.b, bVar.c, j2, bVar.d);
            }
            return a(i52Var, bVar.a, j3, j2, bVar.d);
        }
        return a(zh1Var.a, qw0Var, j);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    public final sw0 a(i52 i52Var, sw0 sw0Var) {
        boolean z;
        long jA;
        boolean zF;
        int i;
        vw0.b bVar = sw0Var.a;
        boolean z2 = !bVar.a() && bVar.e == -1;
        if (bVar.a() || bVar.e != -1) {
            z = false;
        } else {
            if (i52Var.a(i52Var.a(bVar.a, this.a).d, this.b, 0L).q == i52Var.a(bVar.a)) {
                z = true;
            } else {
                z = false;
            }
        }
        boolean zA = a(i52Var, bVar, z2);
        i52Var.a(sw0Var.a.a, this.a);
        long jB = (bVar.a() || (i = bVar.e) == -1) ? -9223372036854775807L : this.a.b(i);
        if (bVar.a()) {
            jA = this.a.a(bVar.b, bVar.c);
        } else {
            jA = (jB == C.TIME_UNSET || jB == Long.MIN_VALUE) ? this.a.e : jB;
        }
        if (bVar.a()) {
            zF = this.a.f(bVar.b);
        } else {
            int i2 = bVar.e;
            zF = i2 != -1 && this.a.f(i2);
        }
        return new sw0(bVar, sw0Var.b, sw0Var.c, jB, jA, zF, z2, z, zA);
    }

    private boolean a(i52 i52Var, vw0.b bVar, boolean z) {
        int iA = i52Var.a(bVar.a);
        return !i52Var.a(i52Var.a(iA, this.a, false).d, this.b, 0L).j && i52Var.a(iA, this.a, this.b, this.f, this.g) == -1 && z;
    }

    public final boolean a(pw0 pw0Var) {
        qw0 qw0Var = this.j;
        return qw0Var != null && qw0Var.a == pw0Var;
    }

    public void a(kk0.a aVar, vw0.b bVar) {
        this.c.a(aVar.a(), bVar);
    }

    public final void a(long j) {
        qw0 qw0Var = this.j;
        if (qw0Var != null) {
            qw0Var.b(j);
        }
    }

    public final boolean a(qw0 qw0Var) {
        if (qw0Var != null) {
            boolean z = false;
            if (qw0Var.equals(this.j)) {
                return false;
            }
            this.j = qw0Var;
            while (qw0Var.b() != null) {
                qw0Var = qw0Var.b();
                if (qw0Var == this.i) {
                    this.i = this.h;
                    z = true;
                }
                qw0Var.g();
                this.k--;
            }
            this.j.a((qw0) null);
            g();
            return z;
        }
        throw new IllegalStateException();
    }

    private static vw0.b a(i52 i52Var, Object obj, long j, long j2, i52.d dVar, i52.b bVar) {
        Object obj2 = obj;
        i52Var.a(obj, bVar);
        i52Var.a(bVar.d, dVar, 0L);
        int iA = i52Var.a(obj);
        while (bVar.e == 0 && bVar.a() > 0 && bVar.f(bVar.d()) && bVar.b(0L) == -1) {
            int i = iA + 1;
            if (iA >= dVar.q) {
                break;
            }
            i52Var.a(i, bVar, true);
            obj2 = bVar.c;
            obj2.getClass();
            iA = i;
        }
        i52Var.a(obj2, bVar);
        int iB = bVar.b(j);
        if (iB == -1) {
            return new vw0.b(bVar.a(j), j2, obj2);
        }
        return new vw0.b(obj2, iB, bVar.d(iB), j2);
    }

    public final vw0.b a(i52 i52Var, Object obj, long j) {
        long j2;
        int iA;
        Object obj2 = obj;
        int i = i52Var.a(obj2, this.a).d;
        Object obj3 = this.l;
        if (obj3 != null && (iA = i52Var.a(obj3)) != -1 && i52Var.a(iA, this.a, false).d == i) {
            j2 = this.m;
        } else {
            qw0 qw0VarB = this.h;
            while (true) {
                if (qw0VarB != null) {
                    if (qw0VarB.b.equals(obj2)) {
                        j2 = qw0VarB.f.a.d;
                        break;
                    }
                    qw0VarB = qw0VarB.b();
                } else {
                    qw0 qw0VarB2 = this.h;
                    while (true) {
                        if (qw0VarB2 != null) {
                            int iA2 = i52Var.a(qw0VarB2.b);
                            if (iA2 != -1 && i52Var.a(iA2, this.a, false).d == i) {
                                j2 = qw0VarB2.f.a.d;
                                break;
                            }
                            qw0VarB2 = qw0VarB2.b();
                        } else {
                            j2 = this.e;
                            this.e = 1 + j2;
                            if (this.h != null) {
                                break;
                            }
                            this.l = obj2;
                            this.m = j2;
                            break;
                        }
                    }
                }
            }
        }
        long j3 = j2;
        i52Var.a(obj2, this.a);
        i52Var.a(this.a.d, this.b, 0L);
        boolean z = false;
        for (int iA3 = i52Var.a(obj); iA3 >= this.b.p; iA3--) {
            i52Var.a(iA3, this.a, true);
            boolean z2 = this.a.a() > 0;
            z |= z2;
            i52.b bVar = this.a;
            if (bVar.b(bVar.e) != -1) {
                obj2 = this.a.c;
                obj2.getClass();
            }
            if (z && (!z2 || this.a.e != 0)) {
                break;
            }
        }
        return a(i52Var, obj2, j, j3, this.b, this.a);
    }

    private boolean a(i52 i52Var) {
        qw0 qw0VarB = this.h;
        if (qw0VarB == null) {
            return true;
        }
        int iA = i52Var.a(qw0VarB.b);
        while (true) {
            iA = i52Var.a(iA, this.a, this.b, this.f, this.g);
            while (qw0VarB.b() != null && !qw0VarB.f.g) {
                qw0VarB = qw0VarB.b();
            }
            qw0 qw0VarB2 = qw0VarB.b();
            if (iA == -1 || qw0VarB2 == null || i52Var.a(qw0VarB2.b) != iA) {
                break;
            }
            qw0VarB = qw0VarB2;
        }
        boolean zA = a(qw0VarB);
        qw0VarB.f = a(i52Var, qw0VarB.f);
        return !zA;
    }

    public final boolean a(i52 i52Var, long j, long j2) {
        sw0 sw0VarA;
        qw0 qw0VarB = this.h;
        qw0 qw0Var = null;
        while (qw0VarB != null) {
            sw0 sw0Var = qw0VarB.f;
            if (qw0Var == null) {
                sw0VarA = a(i52Var, sw0Var);
            } else {
                sw0 sw0VarA2 = a(i52Var, qw0Var, j);
                if (sw0VarA2 == null) {
                    return !a(qw0Var);
                }
                if (sw0Var.b != sw0VarA2.b || !sw0Var.a.equals(sw0VarA2.a)) {
                    return !a(qw0Var);
                }
                sw0VarA = sw0VarA2;
            }
            long j3 = sw0Var.c;
            sw0 sw0Var2 = j3 == sw0VarA.c ? sw0VarA : new sw0(sw0VarA.a, sw0VarA.b, j3, sw0VarA.d, sw0VarA.e, sw0VarA.f, sw0VarA.g, sw0VarA.h, sw0VarA.i);
            qw0VarB.f = sw0Var2;
            long j4 = sw0Var.e;
            long j5 = sw0VarA.e;
            if (j4 != C.TIME_UNSET && j4 != j5) {
                pw0 pw0Var = qw0VarB.a;
                if (pw0Var instanceof ip) {
                    long j6 = sw0Var2.d;
                    if (j6 == C.TIME_UNSET) {
                        j6 = Long.MIN_VALUE;
                    }
                    ((ip) pw0Var).a(j6);
                }
                long j7 = sw0VarA.e;
                return (a(qw0VarB) || (qw0VarB == this.i && !qw0VarB.f.f && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j7 > C.TIME_UNSET ? 1 : (j7 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : qw0VarB.d(j7)) ? 1 : (j2 == ((j7 > C.TIME_UNSET ? 1 : (j7 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : qw0VarB.d(j7)) ? 0 : -1)) >= 0))) ? false : true;
            }
            qw0Var = qw0VarB;
            qw0VarB = qw0VarB.b();
        }
        return true;
    }

    public final boolean a(i52 i52Var, int i) {
        this.f = i;
        return a(i52Var);
    }

    public final boolean a(i52 i52Var, boolean z) {
        this.g = z;
        return a(i52Var);
    }
}
