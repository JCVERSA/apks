package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import com.google.android.gms.internal.ads.vb;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayList;
import java.util.List;

public final class i8j {
    public final qaj c;
    public final olg d;
    public long e;
    public int f;
    public boolean g;
    public l3j h;
    public d8j i;
    public d8j j;
    public d8j k;
    public d8j l;
    public d8j m;
    public int n;
    public Object o;
    public long p;
    public final q6j r;
    public final y2f a = new y2f();
    public final e4f b = new e4f();
    public List q = new ArrayList();

    public i8j(qaj qajVar, olg olgVar, q6j q6jVar, l3j l3jVar) {
        this.c = qajVar;
        this.d = olgVar;
        this.r = q6jVar;
        this.h = l3jVar;
    }

    public static boolean K(long j, long j2) {
        return j == C.TIME_UNSET || j == j2;
    }

    public static bnj i(w4f w4fVar, Object obj, long j, long j2, e4f e4fVar, y2f y2fVar) {
        w4fVar.n(obj, y2fVar);
        w4fVar.e(y2fVar.c, e4fVar, 0L);
        w4fVar.a(obj);
        y2fVar.b();
        w4fVar.n(obj, y2fVar);
        int iD = y2fVar.d(j);
        return iD == -1 ? new bnj(obj, j2, y2fVar.c(j)) : new bnj(obj, iD, y2fVar.e(iD), j2);
    }

    public static final boolean m(bnj bnjVar) {
        return !bnjVar.b() && bnjVar.e == -1;
    }

    public final d8j A() {
        return this.j;
    }

    public final f8j B(long j, o9j o9jVar) {
        d8j d8jVar = this.l;
        return d8jVar == null ? f(o9jVar.a, o9jVar.b, o9jVar.c, o9jVar.s) : e(o9jVar.a, d8jVar, j);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0057  */
    /* JADX WARN: Code duplicated, block: B:19:0x005d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    public final f8j C(w4f w4fVar, f8j f8jVar) {
        long j;
        long jF;
        long j2;
        long j3;
        int i;
        int i2;
        bnj bnjVar = f8jVar.a;
        boolean zM = m(bnjVar);
        boolean zL = l(w4fVar, bnjVar);
        boolean zK = k(w4fVar, bnjVar, zM);
        Object obj = bnjVar.a;
        y2f y2fVar = this.a;
        w4fVar.n(obj, y2fVar);
        if (bnjVar.b() || (i2 = bnjVar.e) == -1) {
            j = -9223372036854775807L;
        } else {
            y2fVar.g(i2);
            j = 0;
        }
        if (!bnjVar.b()) {
            if (j != C.TIME_UNSET) {
                j2 = 0;
                j3 = 0;
            } else {
                jF = y2fVar.d;
            }
            if (bnjVar.b()) {
                y2fVar.k(bnjVar.b);
            } else {
                i = bnjVar.e;
                if (i != -1) {
                    y2fVar.k(i);
                }
            }
            return new f8j(bnjVar, f8jVar.b, f8jVar.c, j3, j2, false, false, zM, zL, zK);
        }
        jF = y2fVar.f(bnjVar.b, bnjVar.c);
        j3 = j;
        j2 = jF;
        if (bnjVar.b()) {
            y2fVar.k(bnjVar.b);
        } else {
            i = bnjVar.e;
            if (i != -1) {
                y2fVar.k(i);
            }
        }
        return new f8j(bnjVar, f8jVar.b, f8jVar.c, j3, j2, false, false, zM, zL, zK);
    }

    public final bnj D(w4f w4fVar, Object obj, long j) {
        long jD;
        int iA;
        y2f y2fVar = this.a;
        int i = w4fVar.n(obj, y2fVar).c;
        Object obj2 = this.o;
        if (obj2 == null || (iA = w4fVar.a(obj2)) == -1 || w4fVar.d(iA, y2fVar, false).c != i) {
            d8j d8jVarG = this.i;
            while (true) {
                if (d8jVarG == null) {
                    d8j d8jVarG2 = this.i;
                    while (true) {
                        if (d8jVarG2 == null) {
                            jD = d(obj);
                            if (jD != -1) {
                                break;
                            }
                            jD = this.e;
                            this.e = 1 + jD;
                            if (this.i != null) {
                                break;
                            }
                            this.o = obj;
                            this.p = jD;
                            break;
                        }
                        int iA2 = w4fVar.a(d8jVarG2.b);
                        if (iA2 != -1 && w4fVar.d(iA2, y2fVar, false).c == i) {
                            jD = d8jVarG2.g.a.d;
                            break;
                        }
                        d8jVarG2 = d8jVarG2.g();
                    }
                } else {
                    if (d8jVarG.b.equals(obj)) {
                        jD = d8jVarG.g.a.d;
                        break;
                    }
                    d8jVarG = d8jVarG.g();
                }
            }
        } else {
            jD = this.p;
        }
        long j2 = jD;
        w4fVar.n(obj, y2fVar);
        int i2 = y2fVar.c;
        e4f e4fVar = this.b;
        w4fVar.e(i2, e4fVar, 0L);
        Object obj3 = obj;
        for (int iA3 = w4fVar.a(obj); iA3 >= e4fVar.m; iA3--) {
            w4fVar.d(iA3, y2fVar, true);
            y2fVar.b();
            if (y2fVar.d(y2fVar.d) != -1) {
                Object obj4 = y2fVar.b;
                obj4.getClass();
                obj3 = obj4;
            }
        }
        return i(w4fVar, obj3, j, j2, e4fVar, y2fVar);
    }

    public final void F() {
        if (this.n == 0) {
            return;
        }
        d8j d8jVarG = this.i;
        n7g.b(d8jVarG);
        this.o = d8jVarG.b;
        this.p = d8jVarG.g.a.d;
        while (d8jVarG != null) {
            d8jVarG.o();
            d8jVarG = d8jVarG.g();
        }
        this.i = null;
        this.l = null;
        this.j = null;
        this.k = null;
        this.n = 0;
        j();
    }

    public final void G() {
        d8j d8jVar = this.m;
        if (d8jVar == null || d8jVar.t()) {
            this.m = null;
            for (int i = 0; i < this.q.size(); i++) {
                d8j d8jVar2 = (d8j) this.q.get(i);
                if (!d8jVar2.t()) {
                    this.m = d8jVar2;
                    return;
                }
            }
        }
    }

    public final void H(long j) {
        d8j d8jVar = this.l;
        if (d8jVar != null) {
            d8jVar.n(j);
        }
    }

    public final void I() {
        if (this.q.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.q.size(); i++) {
            ((d8j) this.q.get(i)).o();
        }
        this.q = arrayList;
        this.m = null;
        G();
    }

    public final void J(w4f w4fVar, l3j l3jVar) {
        this.h = l3jVar;
        long j = l3jVar.a;
        I();
    }

    public final boolean L(zmj zmjVar) {
        d8j d8jVar = this.l;
        return d8jVar != null && d8jVar.a == zmjVar;
    }

    public final boolean M(zmj zmjVar) {
        d8j d8jVar = this.m;
        return d8jVar != null && d8jVar.a == zmjVar;
    }

    public final boolean a() {
        d8j d8jVar = this.l;
        if (d8jVar == null) {
            return true;
        }
        if (d8jVar.g.j || !d8jVar.s() || this.l.g.e == C.TIME_UNSET) {
            return false;
        }
        return this.n < 100;
    }

    public final int b(w4f w4fVar) {
        d8j d8jVarG = this.i;
        if (d8jVarG == null) {
            return 0;
        }
        int iA = w4fVar.a(d8jVarG.b);
        while (true) {
            iA = w4fVar.i(iA, this.a, this.b, this.f, this.g);
            while (true) {
                d8jVarG.getClass();
                if (d8jVarG.g() == null || d8jVarG.g.h) {
                    break;
                }
                d8jVarG = d8jVarG.g();
            }
            d8j d8jVarG2 = d8jVarG.g();
            if (iA == -1 || d8jVarG2 == null || w4fVar.a(d8jVarG2.b) != iA) {
                break;
            }
            d8jVarG = d8jVarG2;
        }
        int iN = n(d8jVarG);
        d8jVarG.g = C(w4fVar, d8jVarG.g);
        return iN;
    }

    public final long c(w4f w4fVar, Object obj, int i) {
        y2f y2fVar = this.a;
        w4fVar.n(obj, y2fVar);
        y2fVar.g(i);
        long j = y2fVar.g.a(i).h;
        return 0L;
    }

    public final long d(Object obj) {
        for (int i = 0; i < this.q.size(); i++) {
            d8j d8jVar = (d8j) this.q.get(i);
            if (d8jVar.b.equals(obj)) {
                return d8jVar.g.a.d;
            }
        }
        return -1L;
    }

    public final f8j e(w4f w4fVar, d8j d8jVar, long j) {
        long j2;
        long j3;
        f8j f8jVar = d8jVar.g;
        long jE = d8jVar.e();
        long j4 = f8jVar.e;
        long j5 = (jE + j4) - j;
        if (f8jVar.h) {
            bnj bnjVar = f8jVar.a;
            Object obj = bnjVar.a;
            int iA = w4fVar.a(obj);
            int i = this.f;
            boolean z = this.g;
            e4f e4fVar = this.b;
            y2f y2fVar = this.a;
            int i2 = w4fVar.i(iA, y2fVar, e4fVar, i, z);
            if (i2 != -1) {
                int i3 = w4fVar.d(i2, y2fVar, true).c;
                Object obj2 = y2fVar.b;
                obj2.getClass();
                long jD = bnjVar.d;
                long j6 = 0;
                if (w4fVar.e(i3, e4fVar, 0L).m == i2) {
                    Pair pairM = w4fVar.m(e4fVar, y2fVar, i3, C.TIME_UNSET, Math.max(0L, j5));
                    if (pairM != null) {
                        obj2 = pairM.first;
                        long jLongValue = ((Long) pairM.second).longValue();
                        d8j d8jVarG = d8jVar.g();
                        if (d8jVarG == null || !d8jVarG.b.equals(obj2)) {
                            jD = d(obj2);
                            if (jD == -1) {
                                jD = this.e;
                                this.e = 1 + jD;
                            }
                        } else {
                            jD = d8jVarG.g.a.d;
                        }
                        j3 = jLongValue;
                        j6 = C.TIME_UNSET;
                    }
                } else {
                    j3 = 0;
                }
                bnj bnjVarI = i(w4fVar, obj2, j3, jD, e4fVar, y2fVar);
                if (j6 != C.TIME_UNSET && f8jVar.c != C.TIME_UNSET) {
                    w4fVar.n(obj, y2fVar).b();
                    int i4 = y2fVar.g.c;
                }
                return f(w4fVar, bnjVarI, j6, j3);
            }
        } else {
            bnj bnjVar2 = f8jVar.a;
            Object obj3 = bnjVar2.a;
            y2f y2fVar2 = this.a;
            w4fVar.n(obj3, y2fVar2);
            if (!bnjVar2.b()) {
                int i5 = bnjVar2.e;
                if (i5 != -1) {
                    y2fVar2.j(i5);
                }
                int iE = y2fVar2.e(i5);
                y2fVar2.k(i5);
                if (iE != y2fVar2.a(i5)) {
                    return g(w4fVar, obj3, i5, iE, j4, bnjVar2.d, false);
                }
                c(w4fVar, obj3, i5);
                return h(w4fVar, obj3, 0L, j4, bnjVar2.d, false);
            }
            int i6 = bnjVar2.b;
            if (y2fVar2.a(i6) != -1) {
                int iA2 = y2fVar2.g.a(i6).a(bnjVar2.c);
                if (iA2 < 0) {
                    return g(w4fVar, obj3, i6, iA2, f8jVar.c, bnjVar2.d, false);
                }
                long jLongValue2 = f8jVar.c;
                if (jLongValue2 == C.TIME_UNSET) {
                    Pair pairM2 = w4fVar.m(this.b, y2fVar2, y2fVar2.c, C.TIME_UNSET, Math.max(0L, j5));
                    if (pairM2 != null) {
                        jLongValue2 = ((Long) pairM2.second).longValue();
                        j2 = C.TIME_UNSET;
                    }
                } else {
                    j2 = jLongValue2;
                }
                c(w4fVar, obj3, i6);
                return h(w4fVar, obj3, Math.max(0L, jLongValue2), j2, bnjVar2.d, false);
            }
        }
        return null;
    }

    public final f8j f(w4f w4fVar, bnj bnjVar, long j, long j2) {
        Object obj = bnjVar.a;
        w4fVar.n(obj, this.a);
        return bnjVar.b() ? g(w4fVar, obj, bnjVar.b, bnjVar.c, j, bnjVar.d, false) : h(w4fVar, obj, j2, j, bnjVar.d, false);
    }

    public final f8j g(w4f w4fVar, Object obj, int i, int i2, long j, long j2, boolean z) {
        bnj bnjVar = new bnj(obj, i, i2, j2);
        Object obj2 = bnjVar.a;
        int i3 = bnjVar.b;
        int i4 = bnjVar.c;
        y2f y2fVar = this.a;
        long jF = w4fVar.n(obj2, y2fVar).f(i3, i4);
        if (i2 == y2fVar.e(i)) {
            y2fVar.h();
        }
        y2fVar.k(i3);
        return new f8j(bnjVar, (jF == C.TIME_UNSET || jF > 0) ? 0L : Math.max(0L, (-1) + jF), j, C.TIME_UNSET, jF, false, false, false, false, false);
    }

    public final f8j h(w4f w4fVar, Object obj, long j, long j2, long j3, boolean z) {
        long j4;
        long j5;
        long j6;
        y2f y2fVar = this.a;
        w4fVar.n(obj, y2fVar);
        int iC = y2fVar.c(j);
        if (iC != -1) {
            y2fVar.j(iC);
        }
        if (iC == -1) {
            y2fVar.b();
        } else {
            y2fVar.k(iC);
        }
        bnj bnjVar = new bnj(obj, j3, iC);
        boolean zM = m(bnjVar);
        boolean zL = l(w4fVar, bnjVar);
        boolean zK = k(w4fVar, bnjVar, zM);
        if (iC != -1) {
            y2fVar.k(iC);
        }
        if (iC != -1) {
            y2fVar.g(iC);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != C.TIME_UNSET) {
            j5 = 0;
            j6 = 0;
        } else {
            j5 = j4;
            j6 = y2fVar.d;
        }
        return new f8j(bnjVar, (j6 == C.TIME_UNSET || j < j6) ? j : Math.max(0L, j6 - 1), j2, j5, j6, false, false, zM, zL, zK);
    }

    public final void j() {
        int i = zzfww.zzd;
        final l4i l4iVar = new l4i();
        for (d8j d8jVarG = this.i; d8jVarG != null; d8jVarG = d8jVarG.g()) {
            l4iVar.g(d8jVarG.g.a);
        }
        d8j d8jVar = this.j;
        final bnj bnjVar = d8jVar == null ? null : d8jVar.g.a;
        this.d.f(new Runnable() {
            @Override
            public final void run() {
                this.zza.c.r(l4iVar.j(), bnjVar);
            }
        });
    }

    public final boolean k(w4f w4fVar, bnj bnjVar, boolean z) {
        int iA = w4fVar.a(bnjVar.a);
        y2f y2fVar = this.a;
        int i = w4fVar.d(iA, y2fVar, false).c;
        e4f e4fVar = this.b;
        return !w4fVar.e(i, e4fVar, 0L).h && w4fVar.i(iA, y2fVar, e4fVar, this.f, this.g) == -1 && z;
    }

    public final boolean l(w4f w4fVar, bnj bnjVar) {
        if (!m(bnjVar)) {
            return false;
        }
        Object obj = bnjVar.a;
        return w4fVar.e(w4fVar.n(obj, this.a).c, this.b, 0L).n == w4fVar.a(obj);
    }

    public final int n(d8j d8jVar) {
        n7g.b(d8jVar);
        int i = 0;
        if (d8jVar.equals(this.l)) {
            return 0;
        }
        this.l = d8jVar;
        while (d8jVar.g() != null) {
            d8jVar = d8jVar.g();
            d8jVar.getClass();
            if (d8jVar == this.j) {
                d8j d8jVar2 = this.i;
                this.j = d8jVar2;
                this.k = d8jVar2;
                i = 3;
            }
            if (d8jVar == this.k) {
                this.k = this.j;
                i |= 2;
            }
            d8jVar.o();
            this.n--;
        }
        d8j d8jVar3 = this.l;
        d8jVar3.getClass();
        d8jVar3.p(null);
        j();
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006c  */
    public final int o(w4f w4fVar, long j, long j2, long j3) {
        f8j f8jVarC;
        int i;
        d8j d8jVarG = this.i;
        d8j d8jVar = null;
        while (true) {
            boolean z = false;
            if (d8jVarG == null) {
                return 0;
            }
            f8j f8jVar = d8jVarG.g;
            if (d8jVar == null) {
                f8jVarC = C(w4fVar, f8jVar);
            } else {
                f8j f8jVarE = e(w4fVar, d8jVar, j);
                if (f8jVarE == null || f8jVar.b != f8jVarE.b || !f8jVar.a.equals(f8jVarE.a)) {
                    return n(d8jVar);
                }
                f8jVarC = f8jVarE;
            }
            d8jVarG.g = f8jVarC.a(f8jVar.c);
            long j4 = f8jVar.e;
            long j5 = f8jVarC.e;
            if (!K(j4, j5)) {
                d8jVarG.r();
                long jE = j5 == C.TIME_UNSET ? Long.MAX_VALUE : d8jVarG.e() + j5;
                if (d8jVarG == this.j) {
                    boolean z2 = d8jVarG.g.g;
                    if (j2 == Long.MIN_VALUE || j2 >= jE) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                } else {
                    i = 0;
                }
                if (d8jVarG == this.k && (j3 == Long.MIN_VALUE || j3 >= jE)) {
                    z = true;
                }
                int iN = n(d8jVarG);
                if (iN != 0) {
                    return iN;
                }
                return z ? i | 2 : i;
            }
            d8jVar = d8jVarG;
            d8jVarG = d8jVarG.g();
        }
    }

    public final int p(w4f w4fVar, int i) {
        this.f = i;
        return b(w4fVar);
    }

    public final int q(w4f w4fVar, boolean z) {
        this.g = z;
        return b(w4fVar);
    }

    public final d8j r() {
        d8j d8jVar = this.i;
        if (d8jVar == null) {
            return null;
        }
        if (d8jVar == this.j) {
            this.j = d8jVar.g();
        }
        if (d8jVar == this.k) {
            this.k = d8jVar.g();
        }
        d8jVar.o();
        int i = this.n - 1;
        this.n = i;
        if (i == 0) {
            this.l = null;
            d8j d8jVar2 = this.i;
            this.o = d8jVar2.b;
            this.p = d8jVar2.g.a.d;
        }
        this.i = this.i.g();
        j();
        return this.i;
    }

    public final d8j s() {
        d8j d8jVar = this.k;
        n7g.b(d8jVar);
        this.k = d8jVar.g();
        j();
        d8j d8jVar2 = this.k;
        n7g.b(d8jVar2);
        return d8jVar2;
    }

    public final d8j t() {
        d8j d8jVar = this.k;
        d8j d8jVar2 = this.j;
        if (d8jVar == d8jVar2) {
            n7g.b(d8jVar2);
            this.k = d8jVar2.g();
        }
        d8j d8jVar3 = this.j;
        n7g.b(d8jVar3);
        this.j = d8jVar3.g();
        j();
        d8j d8jVar4 = this.j;
        n7g.b(d8jVar4);
        return d8jVar4;
    }

    public final d8j u(f8j f8jVar) {
        d8j d8jVarI0;
        d8j d8jVar = this.l;
        long jE = d8jVar == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : (d8jVar.e() + d8jVar.g.e) - f8jVar.b;
        int i = 0;
        while (true) {
            if (i >= this.q.size()) {
                d8jVarI0 = null;
                break;
            }
            f8j f8jVar2 = ((d8j) this.q.get(i)).g;
            if (K(f8jVar2.e, f8jVar.e) && f8jVar2.b == f8jVar.b && f8jVar2.a.equals(f8jVar.a)) {
                d8jVarI0 = (d8j) this.q.remove(i);
                break;
            }
            i++;
        }
        if (d8jVarI0 == null) {
            d8jVarI0 = vb.i0(this.r.a, f8jVar, jE);
        } else {
            d8jVarI0.g = f8jVar;
            d8jVarI0.q(jE);
        }
        d8j d8jVar2 = this.l;
        if (d8jVar2 != null) {
            d8jVar2.p(d8jVarI0);
        } else {
            this.i = d8jVarI0;
            this.j = d8jVarI0;
            this.k = d8jVarI0;
        }
        this.o = null;
        this.l = d8jVarI0;
        this.n++;
        j();
        return d8jVarI0;
    }

    public final d8j v() {
        return this.l;
    }

    public final d8j w() {
        return this.i;
    }

    public final d8j x(zmj zmjVar) {
        for (int i = 0; i < this.q.size(); i++) {
            d8j d8jVar = (d8j) this.q.get(i);
            if (d8jVar.a == zmjVar) {
                return d8jVar;
            }
        }
        return null;
    }

    public final d8j y() {
        return this.m;
    }

    public final d8j z() {
        return this.k;
    }
}
