package defpackage;

import com.google.android.gms.internal.ads.zzii;
import java.util.Objects;

public final class caj {
    public final x9j a;
    public final int b;
    public final x9j c;
    public int d = 0;
    public boolean e = false;
    public boolean f = false;

    public caj(x9j x9jVar, x9j x9jVar2, int i) {
        this.a = x9jVar;
        this.b = i;
        this.c = x9jVar2;
    }

    public static boolean r(x9j x9jVar) {
        return x9jVar.l() != 0;
    }

    public static erj[] t(tqj tqjVar) {
        int iZzd = tqjVar != null ? tqjVar.zzd() : 0;
        erj[] erjVarArr = new erj[iZzd];
        for (int i = 0; i < iZzd; i++) {
            tqjVar.getClass();
            erjVarArr[i] = tqjVar.zze(i);
        }
        return erjVarArr;
    }

    public static final void u(x9j x9jVar) {
        if (x9jVar.l() == 2) {
            x9jVar.zzP();
        }
    }

    public static final void v(x9j x9jVar, long j) {
        x9jVar.zzK();
    }

    public final void A(j2j j2jVar) {
        l(this.a, j2jVar);
        x9j x9jVar = this.c;
        if (x9jVar != null) {
            boolean z = r(x9jVar) && this.d != 3;
            l(x9jVar, j2jVar);
            n(false);
            if (z) {
                o(true);
            }
        }
        this.d = 0;
    }

    public final void B(j2j j2jVar) {
        boolean z;
        x9j x9jVar;
        if (f()) {
            int i = this.d;
            if (i == 4) {
                z = true;
            } else if (i == 2) {
                i = 2;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                x9jVar = this.a;
            } else {
                x9jVar = this.c;
                x9jVar.getClass();
            }
            l(x9jVar, j2jVar);
            n(z);
            this.d = i == 4 ? 1 : 0;
        }
    }

    public final void C(baj bajVar, tqj tqjVar, yoj yojVar, long j, boolean z, boolean z2, long j2, long j3, bnj bnjVar, j2j j2jVar) throws zzii {
        erj[] erjVarArrT = t(tqjVar);
        int i = this.d;
        if (i == 0 || i == 2 || i == 4) {
            this.e = true;
            x9j x9jVar = this.a;
            x9jVar.k(bajVar, erjVarArrT, yojVar, j, z, z2, j2, j3, bnjVar);
            j2jVar.c(x9jVar);
            return;
        }
        this.f = true;
        x9j x9jVar2 = this.c;
        x9jVar2.getClass();
        x9jVar2.k(bajVar, erjVarArrT, yojVar, j, z, z2, j2, j3, bnjVar);
        j2jVar.c(x9jVar2);
    }

    public final void D() {
        x9j x9jVar = this.a;
        if (r(x9jVar)) {
            x9jVar.zzt();
            return;
        }
        x9j x9jVar2 = this.c;
        if (x9jVar2 == null || !r(x9jVar2)) {
            return;
        }
        x9jVar2.zzt();
    }

    public final void E(int i, Object obj, d8j d8jVar) {
        x9j x9jVarK = k(d8jVar);
        x9jVarK.getClass();
        x9jVarK.e(11, obj);
    }

    public final void F(yoj yojVar, j2j j2jVar, long j, boolean z) {
        m(this.a, yojVar, j2jVar, j, z);
        x9j x9jVar = this.c;
        if (x9jVar != null) {
            m(x9jVar, yojVar, j2jVar, j, z);
        }
    }

    public final void G() {
        int i = this.d;
        if (i == 3 || i == 4) {
            o(i == 4);
            this.d = this.d != 4 ? 1 : 0;
        } else if (i == 2) {
            this.d = 0;
        }
    }

    public final void H(arj arjVar, arj arjVar2, long j) {
        int i;
        int i2 = this.b;
        boolean zB = arjVar.b(i2);
        boolean zB2 = arjVar2.b(i2);
        x9j x9jVar = this.c;
        if (x9jVar == null || (i = this.d) == 3 || (i == 0 && r(this.a))) {
            x9jVar = this.a;
        }
        if (!zB || x9jVar.zzR()) {
            return;
        }
        x();
        baj bajVar = arjVar.b[i2];
        baj bajVar2 = arjVar2.b[i2];
        if (zB2 && Objects.equals(bajVar2, bajVar) && !f()) {
            return;
        }
        v(x9jVar, j);
    }

    public final void I(d8j d8jVar) {
        x9j x9jVarK = k(d8jVar);
        x9jVarK.getClass();
        x9jVarK.zzw();
    }

    public final void J() {
        this.a.zzG();
        this.e = false;
        x9j x9jVar = this.c;
        if (x9jVar != null) {
            x9jVar.zzG();
            this.f = false;
        }
    }

    public final void K(long j, long j2) {
        x9j x9jVar = this.a;
        if (r(x9jVar)) {
            x9jVar.m(j, j2);
        }
        x9j x9jVar2 = this.c;
        if (x9jVar2 == null || !r(x9jVar2)) {
            return;
        }
        x9jVar2.m(j, j2);
    }

    public final void L() {
        if (!r(this.a)) {
            n(true);
        }
        x9j x9jVar = this.c;
        if (x9jVar == null || r(x9jVar)) {
            return;
        }
        n(false);
    }

    public final void M(d8j d8jVar, long j) {
        x9j x9jVarK = k(d8jVar);
        if (x9jVarK != null) {
            x9jVarK.c(j);
        }
    }

    public final void N(long j) {
        int i;
        x9j x9jVar = this.a;
        if (r(x9jVar) && (i = this.d) != 4 && i != 2) {
            v(x9jVar, j);
        }
        x9j x9jVar2 = this.c;
        if (x9jVar2 == null || !r(x9jVar2) || this.d == 3) {
            return;
        }
        v(x9jVar2, j);
    }

    public final void O(d8j d8jVar, long j) {
        x9j x9jVarK = k(d8jVar);
        x9jVarK.getClass();
        v(x9jVarK, j);
    }

    public final void P(float f, float f2) {
        this.a.d(f, f2);
        x9j x9jVar = this.c;
        if (x9jVar != null) {
            x9jVar.d(f, f2);
        }
    }

    public final void Q(w4f w4fVar) {
        this.a.i(w4fVar);
        x9j x9jVar = this.c;
        if (x9jVar != null) {
            x9jVar.i(w4fVar);
        }
    }

    public final void R(Object obj) {
        if (x() != 2) {
            return;
        }
        int i = this.d;
        if (i != 4 && i != 1) {
            this.a.e(1, obj);
            return;
        }
        x9j x9jVar = this.c;
        x9jVar.getClass();
        x9jVar.e(1, obj);
    }

    public final void S(float f) {
        if (x() != 1) {
            return;
        }
        x9j x9jVar = this.a;
        Float fValueOf = Float.valueOf(f);
        x9jVar.e(2, fValueOf);
        x9j x9jVar2 = this.c;
        if (x9jVar2 != null) {
            x9jVar2.e(2, fValueOf);
        }
    }

    public final void T() {
        x9j x9jVar = this.a;
        if (x9jVar.l() == 1 && this.d != 4) {
            x9jVar.zzO();
            return;
        }
        x9j x9jVar2 = this.c;
        if (x9jVar2 == null || x9jVar2.l() != 1 || this.d == 3) {
            return;
        }
        x9jVar2.zzO();
    }

    public final void U() {
        int i;
        n7g.f(!f());
        if (r(this.a)) {
            i = 3;
        } else {
            x9j x9jVar = this.c;
            i = (x9jVar == null || !r(x9jVar)) ? 2 : 4;
        }
        this.d = i;
    }

    public final void V() {
        x9j x9jVar = this.a;
        if (r(x9jVar)) {
            u(x9jVar);
        }
        x9j x9jVar2 = this.c;
        if (x9jVar2 == null || !r(x9jVar2)) {
            return;
        }
        u(x9jVar2);
    }

    public final boolean a(d8j d8jVar) {
        x9j x9jVarK = k(d8jVar);
        return x9jVarK == null || x9jVarK.zzQ() || x9jVarK.zzX() || x9jVarK.f();
    }

    public final boolean b(d8j d8jVar) {
        return p(d8jVar, this.a) && p(d8jVar, this.c);
    }

    public final boolean c(d8j d8jVar) {
        x9j x9jVarK = k(d8jVar);
        x9jVarK.getClass();
        return x9jVarK.zzQ();
    }

    public final boolean d() {
        return this.c != null;
    }

    public final boolean e() {
        x9j x9jVar = this.a;
        boolean zF = r(x9jVar) ? x9jVar.f() : true;
        x9j x9jVar2 = this.c;
        return (x9jVar2 == null || !r(x9jVar2)) ? zF : x9jVar2.f() & zF;
    }

    public final boolean f() {
        return q() || s();
    }

    public final boolean g(d8j d8jVar) {
        return (q() && k(d8jVar) == this.a) || (s() && k(d8jVar) == this.c);
    }

    public final boolean h(d8j d8jVar) {
        return k(d8jVar) != null;
    }

    public final boolean i() {
        int i = this.d;
        if (i == 0 || i == 2 || i == 4) {
            return r(this.a);
        }
        x9j x9jVar = this.c;
        x9jVar.getClass();
        return r(x9jVar);
    }

    public final int j(x9j x9jVar, d8j d8jVar, arj arjVar, j2j j2jVar) {
        if (x9jVar != null && r(x9jVar)) {
            x9j x9jVar2 = this.a;
            boolean z = x9jVar != x9jVar2;
            if ((x9jVar != x9jVar2 || !q()) && (x9jVar != this.c || !s())) {
                yoj yojVarZzp = x9jVar.zzp();
                yoj[] yojVarArr = d8jVar.c;
                int i = this.b;
                yoj yojVar = yojVarArr[i];
                boolean zB = arjVar.b(i);
                if (zB && yojVarZzp == yojVar) {
                    return 1;
                }
                if (!x9jVar.zzR()) {
                    erj[] erjVarArrT = t(arjVar.c[i]);
                    yoj yojVar2 = yojVarArr[i];
                    yojVar2.getClass();
                    x9jVar.b(erjVarArrT, yojVar2, d8jVar.f(), d8jVar.e(), d8jVar.g.a);
                    return 3;
                }
                if (!x9jVar.f()) {
                    return 0;
                }
                l(x9jVar, j2jVar);
                if (!zB || f()) {
                    n(!z);
                }
                return 1;
            }
        }
        return 1;
    }

    public final x9j k(d8j d8jVar) {
        if (d8jVar != null) {
            int i = this.b;
            yoj[] yojVarArr = d8jVar.c;
            if (yojVarArr[i] != null) {
                x9j x9jVar = this.a;
                yoj yojVarZzp = x9jVar.zzp();
                yoj yojVar = yojVarArr[i];
                if (yojVarZzp == yojVar) {
                    return x9jVar;
                }
                x9j x9jVar2 = this.c;
                if (x9jVar2 != null && x9jVar2.zzp() == yojVar) {
                    return x9jVar2;
                }
            }
        }
        return null;
    }

    public final void l(x9j x9jVar, j2j j2jVar) {
        boolean z = true;
        if (this.a != x9jVar && this.c != x9jVar) {
            z = false;
        }
        n7g.f(z);
        if (r(x9jVar)) {
            j2jVar.b(x9jVar);
            u(x9jVar);
            x9jVar.zzr();
        }
    }

    public final void m(x9j x9jVar, yoj yojVar, j2j j2jVar, long j, boolean z) {
        if (r(x9jVar)) {
            if (yojVar != x9jVar.zzp()) {
                l(x9jVar, j2jVar);
            } else if (z) {
                x9jVar.c(j);
            }
        }
    }

    public final void n(boolean z) {
        if (z) {
            if (this.e) {
                this.a.zzI();
                this.e = false;
                return;
            }
            return;
        }
        if (this.f) {
            x9j x9jVar = this.c;
            x9jVar.getClass();
            x9jVar.zzI();
            this.f = false;
        }
    }

    public final void o(boolean z) {
        if (z) {
            x9j x9jVar = this.c;
            x9jVar.getClass();
            x9jVar.e(17, this.a);
        } else {
            x9j x9jVar2 = this.a;
            x9j x9jVar3 = this.c;
            x9jVar3.getClass();
            x9jVar2.e(17, x9jVar3);
        }
    }

    public final boolean p(d8j d8jVar, x9j x9jVar) {
        if (x9jVar == null) {
            return true;
        }
        yoj[] yojVarArr = d8jVar.c;
        int i = this.b;
        yoj yojVar = yojVarArr[i];
        if (x9jVar.zzp() != null) {
            if (x9jVar.zzp() == yojVar) {
                if (yojVar != null && !x9jVar.zzQ()) {
                    d8jVar.g();
                    boolean z = d8jVar.g.g;
                }
            }
            d8j d8jVarG = d8jVar.g();
            return d8jVarG != null && d8jVarG.c[i] == x9jVar.zzp();
        }
        return true;
    }

    public final boolean q() {
        int i = this.d;
        return i == 2 || i == 4;
    }

    public final boolean s() {
        return this.d == 3;
    }

    public final int w() {
        x9j x9jVar = this.c;
        boolean zR = r(this.a);
        int i = 0;
        if (x9jVar != null && r(x9jVar)) {
            i = 1;
        }
        return (zR ? 1 : 0) + i;
    }

    public final int x() {
        return this.a.zzb();
    }

    public final int y(d8j d8jVar, arj arjVar, j2j j2jVar) {
        int iJ = j(this.a, d8jVar, arjVar, j2jVar);
        return iJ == 1 ? j(this.c, d8jVar, arjVar, j2jVar) : iJ;
    }

    public final long z(d8j d8jVar) {
        x9j x9jVarK = k(d8jVar);
        Objects.requireNonNull(x9jVarK);
        return x9jVarK.o();
    }
}
